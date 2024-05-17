package org.ppa;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


import java.io.File;
import java.io.FileInputStream;
import java.nio.file.Path;
import java.sql.*;
import java.sql.Date;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

public class CreateIndividuals {
   private static final Logger logger = LogManager.getLogger(CreateIndividuals.class);
   private String user;
   private String pw;
   private boolean oracleHandling = false;

   private String resourcePath;
   /**
    * Some app Contants
    * <p>
    * If adding extra configurations parameters in input.conf, please change the
    * private final int C_NUMBERCONFIGURATIONPARAMETERS to the corresponding number of parameters.
    */
   private final int C_NUMBERCONFIGURATIONPARAMETERS = 10;
   private final String C_ORACLESCRIPT = "oraclescript.sql";
   private final String C_H2SCRIPT = "h2script.sql";

   private String turtleFile;
   // m_appProperties contains all the configurations parameters set via the input.conf file in resources
   protected final Properties m_appProperties = new Properties();
   private String inputDataPath;
   private String outputDataPath;
   private String outputDataPathEA;
   private String bronDataExcel;
   private String triplyDBfile;
   private String oracleScript;
   private String h2script;

   // Model
   private String defModel; // To be set via input.conf
   private String classId; // To be set via input.conf

   // Script file for generating the internal database H2.
   // Script generated by EATool for the chosen UML-model
   // For the (APG) EATool use template: 01_01 no foreign key Create DDL for sats_Links.tmp
   private final String dataschemaScriptFile = "datamodelscript.sql";
   private String databaseSchemaOfTheModel;

   // File with all the elements of the chosen UML-model.
   // File is generated by the EATool for the chosen UML-model
   // For the (APG) EATool use template: ElementList.tmp
   // File contains (fragment) (table, attribute, datatype, key indicator):
   //    Role,pensionFundId,int,0
   //    Role,fromValidityDate,dateTime,1
   //    Role,id,long,1
   //    Role,tillValidityDate,dateTime,0
   private final String modelmetadataFile = "modelmeta.dat";
   private String modelData = outputDataPathEA + "/" + modelmetadataFile;

   // This collection contains all the administration state dates.
   private AdmDateCollection admDateCollection;
   private final String indent = " ".repeat(3);
   private final String prefix = "def:";

   //Default text block used for creating the turtle file for importing into tghe grapDB.
   private final String textBlock = "" +
      "prefix owl: <http://www.w3.org/2002/07/owl#>\n" +
      "prefix rdf: <http://www.w3.org/1999/02/22-rdf-syntax-ns#>\n" +
      "prefix rdfs: <http://www.w3.org/2000/01/rdf-schema#>\n" +
      "prefix xsd: <http://www.w3.org/2001/XMLSchema#>\n";

   /**
    * Constructor of the program
    */
   public CreateIndividuals() {
      try {
         resourcePath = System.getProperty("user.dir") + "/target/classes";

         ReadConfiguration();
         admDateCollection = new AdmDateCollection(resourcePath);
      } catch (Exception e) {
         logger.error("Error reading app configuration! \n" + e);
      }
   }

   /**
    * Read the input.conf in the resource directory.
    * Put the result into m_appProperties
    */
   private void ReadConfiguration() {
      try {
         File file = Path.of(resourcePath + "/input.conf").toFile();
         FileInputStream fileInputStream = new FileInputStream(file);
         m_appProperties.load(fileInputStream);
      } catch (Exception e) {
         logger.error("Error loading properties: " + e);
         throw new RuntimeException("Error reading input.conf\n" + e);
      }
   }

   private void setFiles() {
      modelData = outputDataPathEA + modelmetadataFile;
      databaseSchemaOfTheModel = outputDataPathEA + dataschemaScriptFile;
      triplyDBfile = outputDataPath + turtleFile;
      oracleScript = outputDataPath + C_ORACLESCRIPT;
      h2script = outputDataPath + C_H2SCRIPT;
      bronDataExcel = inputDataPath + bronDataExcel;
   }

   public String getOutputPathEA() {
      return outputDataPathEA;
   }

   public String getModelMetaFile() {
      return modelmetadataFile;
   }

   public String getDatabaseSchemaFile() {
      return dataschemaScriptFile;
   }

   public String getModelMetadataFile() {
      return modelmetadataFile;
   }

   public String getOutputDataPath() {
      return outputDataPath;
   }

   public String getOutputFile() {
      return turtleFile;
   }

   public void setUser(String user) {
      this.user = user;
   }

   public void setPw(String pw) {
      this.pw = pw;
   }

   public void setTurtleFile(String file) {
      turtleFile = file;
   }

   public void setExcel(String excel) {
      this.bronDataExcel = excel;
   }

   public void setExcelPath(String path) {
      this.inputDataPath = System.getenv("OneDrive") + "//" + path;
   }

   public void setOutputDataPath(String path) {
      this.outputDataPath = System.getenv("OneDrive") + "//" + path;
   }

   public void setOutputPathEAGenerations(String path) {
      this.outputDataPathEA = System.getenv("OneDrive") + "//" + path;
   }

   public void setOracleHandling(String handling) {
      oracleHandling = handling.equals("1");
   }

   public void setModel(String model) {
      defModel = model;
   }

   public void setClassId(String id) {
      classId = id;
   }

   private String getOwlDataType(String dataType) {
      String owlDataType = dataType;
      switch (dataType.toLowerCase()) {
         case "date":
            owlDataType = "xsd:date";
            break;
         case "int":
         case "integer":
            owlDataType = "xsd:int";
            break;
         case "long":
            owlDataType = "xsd:long";
            break;
         case "double":
            owlDataType = "xsd:double";
            break;
         case "float":
            owlDataType = "xsd:float";
            break;
         case "datetime":
            owlDataType = "xsd:dateTime";
            break;
         default:
            owlDataType = "xsd:string";
            break;
      }
      return owlDataType;
   }

   private String getOwlFormattedOutput(String dataType, ResultSet data, String columnName) {
      String owlFormattedString = "";
      try {
         switch (dataType.toLowerCase()) {
            case "date":
               owlFormattedString = String.format("%1$tY-%1$tm-%1$td", data.getDate(columnName));
               break;
            case "datetime":
            case "timestamp":
               owlFormattedString = String.format("%1$tY-%1$tm-%1$tdT%1$tH:%1$tM:%1$tS", data.getDate(columnName)) + "Z";
               break;
            default:
               owlFormattedString = data.getString(columnName);
               break;
         }
      } catch (SQLException e) {
         System.out.println(e);
      }
      return owlFormattedString;
   }

   public String checkQuotedDataType(String dataType) {
      String quote = "";
      switch (dataType.toLowerCase()) {
         case "string":
         case "date":
         case "timestamp":
         case "datetime":
            quote = "'";
            break;
         default:
            quote = "";
            break;
      }
      return quote;
   }

   public String formatDate(Date date) {
      return String.format("%1$tY-%1$tm-%1$td", date);
   }

   public String formatKey(String id, Date fvd) {
      String key = "";
      String fvdFormat = String.format("%1$tY%1$tm%1$td", fvd);
      key = id + "_" + fvdFormat;
      return key;
   }

   public void changeSemicolonIntoPoint(ArrayList<String> ar) {
      ar.set(ar.size() - 1, ar.get(ar.size() - 1).replace(";", "."));
   }

   public void plainArrayOutputWithNewLine(ArrayList<String> ar, Out out) throws Exception {
      for (String line : ar) {
         logger.debug(line);
         out.print(line + "\n");
      }
   }

   public void formatLinesForPlatformAndOutput(ArrayList<String> ar
      , String tsStart, String tsEnd, String tdStart, String tdEnd
      , boolean semicolon, Out out) throws Exception {
      for (int i = 0; i < ar.size(); i++) {
         String line = ar.get(i);
         line = line.replace("{ts ", tsStart).
            replace("ts}", tsEnd).
            replace("{td ", tdStart).
            replace("'td}", tdEnd);

         out.print(line + (semicolon ? ";" : "") + "\n");
      }
   }

   public void setRelationData(ConnectDatabase conn
      , Queries qry
      , Long id
      , Date startDate
      , ArrayList<RelationInfo> arRelationInfo
      , ArrayList<String> ar) throws Exception {

      String currentDate = formatDate(startDate);
      List<String> keysDone = new ArrayList<>();
      while (currentDate != null) {
         ResultSet resultSet = conn.getQueryData(qry.getParameteredQuery(id, currentDate));
         while (resultSet.next()) {
            logger.debug("---> relationInfo: " + arRelationInfo.toString());
            for (RelationInfo relationInfo : arRelationInfo) {
               try {
                  String key = formatKey(resultSet.getString(relationInfo.relationWith + "_id"), resultSet.getDate(relationInfo.relationWith + "_fvd"));
                  logger.debug("---> Key for relation: " + key);
                  if (!keysDone.contains(key) && resultSet.getDate("fromvaliditydate").equals(startDate)) {
                     keysDone.add(key);
                     ar.add(indent + prefix + relationInfo.relationName + " " + relationInfo.relationWith + ":" + key + ";");
                  }
               } catch (Exception e) {
                  logger.error("Error in creating relations " + arRelationInfo + ", error: " + e);
               }
            }
         }
         currentDate = admDateCollection.nextDate(currentDate);
      }
   }

   public void makeTurtleData(ConnectDatabase conn, Out out, ReadModelMetadata metaModel) {
      logger.debug("Start makeTriplydata");

      ArrayList<String> arLines = new ArrayList<>();
      ArrayList<RelationInfo> arRelationInfo = new ArrayList<>();

      try {
         out.setFilename(triplyDBfile);
         out.print(textBlock + "\n");
         out.print("prefix def: " + defModel + "\n");

         // Make Header PREFIX part
         metaModel.resetCurrentClassNameIterator();
         String className;
         while (metaModel.nextClassWithoutLink() != null) {
            className = metaModel.getCurrentActiveClassName().toLowerCase();
            arLines.add("prefix " + className + ": " + classId.replace("[classname]", className));
         }
         plainArrayOutputWithNewLine(arLines, out);
         out.print("\n");

         metaModel.resetCurrentClassNameIterator();
         while (metaModel.nextClassWithoutLink() != null) {
            className = metaModel.getCurrentActiveClassName();
            logger.debug("--\n--Handling class " + className + " for TriplyDB\n--");

            // Read the data from the database now -> for now it is the H2-database
            ResultSet data = conn.getData(className.toUpperCase());

            // Do for each data record
            while (data.next()) {
               arLines.clear();

               // Make key, get the data out of the metadata of the database.
               ArrayList<String> arKeys = metaModel.getKeyListForClass(className);
               String id = null;
               Date fvd = null;
               String keyPart = "";
               String sep = "_";
               for (String keyField : arKeys) {
                  // Get the metadata of a key
                  String dataType = metaModel.getDataTypeCurrentClassname(keyField);

                  switch (keyField) {
                     case "id":
                        id = data.getString(keyField);
                        break;
                     case "fromvaliditydate":
                        fvd = data.getDate(keyField);
                        break;
                     default:
                        if (dataType.equals("datetime")) {
                           keyPart = keyPart + "_" + String.format("%1$tY%1$tm%1$td", data.getDate(keyField));
                        } else if (dataType.equals("date")) {
                           keyPart = keyPart + "_" + String.format("%1$tY%1$tm%1$td", data.getDate(keyField));
                        } else {
                           keyPart = keyPart + "_" + data.getString(keyField);
                        }
                        break;
                  }
               }

               if (id != null && fvd != null) {
                  keyPart = formatKey(id, fvd) + keyPart;
               }

               arLines.add(className.toLowerCase() + ":" + keyPart);

               // Define class type
               arLines.add(indent + "a " + prefix + className + ";");

               Map<String, ModelFieldmeta> fields = metaModel.getFieldsCurrentClassname();
               for (Map.Entry<String, ModelFieldmeta> fld : fields.entrySet()) {
                  String columnName = fld.getValue().name;
                  String dataType = fld.getValue().datatype;
                  String owlDataType = getOwlDataType(dataType);
                  // Format data
                  String owlFormattedString = getOwlFormattedOutput(dataType, data, columnName);

                  boolean skipColumn = columnName.equalsIgnoreCase("tilldate") ||
                     columnName.equalsIgnoreCase("tillvaliditydate") ||
                     columnName.equalsIgnoreCase("livesattill");

                  if (!(owlFormattedString.contains("9999-12-31") && skipColumn)) {
                     arLines.add(indent + prefix + columnName + " '" + owlFormattedString + "'^^" + owlDataType + ";");
                  }
               }

               // Handle the relations
               // ToDo For now "hardcoded" if de model expands in the future, maybe metadata based from the uml model
               switch (className) {
                  case "Person":
                     logger.debug("---\n--- get person relation data, Queries.ROLE_CUSTOMER\n---");
                     arRelationInfo.clear();
                     arRelationInfo.add(new RelationInfo("plays", "customer"));
                     setRelationData(
                        conn
                        , Queries.ROLE_CUSTOMER
                        , data.getLong("id")
                        , data.getDate("fromvaliditydate")
                        , arRelationInfo
                        , arLines
                     );

                     logger.debug("---\n--- get person relation data, Queries.ROLE_EMPLOYEE\n---");
                     arRelationInfo.clear();
                     arRelationInfo.add(new RelationInfo("plays", "employee"));
                     setRelationData(
                        conn
                        , Queries.ROLE_EMPLOYEE
                        , data.getLong("id")
                        , data.getDate("fromvaliditydate")
                        , arRelationInfo
                        , arLines
                     );
                     changeSemicolonIntoPoint(arLines);
                     break;

                  case "Customer":
                     logger.debug("---\n--- get Customer relation data, Queries.CUSTOMER\n---");
                     arRelationInfo.clear();
                     arRelationInfo.add(new RelationInfo("playedBy", "person"));
                     setRelationData(
                        conn
                        , Queries.CUSTOMER_PERSON
                        , data.getLong("id")
                        , data.getDate("fromvaliditydate")
                        , arRelationInfo
                        , arLines
                     );
                     changeSemicolonIntoPoint(arLines);
                     break;

                  case "SavingsAccount":
                     logger.debug("---\n--- get Savingsaccount relation data, Queries.SAVINGSACCOUNT\n---");
                     arRelationInfo.clear();
                     arRelationInfo.add(new RelationInfo("isPartOf", "customer"));
                     setRelationData(
                        conn
                        , Queries.SAVINGSACCOUNT
                        , data.getLong("id")
                        , data.getDate("fromvaliditydate")
                        , arRelationInfo
                        , arLines
                     );
                     changeSemicolonIntoPoint(arLines);
                     break;

                  case "Employee":
                     logger.debug("---\n--- get Employee relation data, Queries.EMPLOYEE_ROL\n---");
                     arRelationInfo.clear();
                     arRelationInfo.add(new RelationInfo("playedBy", "person"));
                     setRelationData(
                        conn
                        , Queries.EMPLOYEE_PERSON
                        , data.getLong("id")
                        , data.getDate("fromvaliditydate")
                        , arRelationInfo
                        , arLines
                     );

                  case "ResidentialPeriod":
                     logger.debug("get ResidentialPeriod relation data, Queries.RESIDIENTAL_PERSON_ADDRESS");
                     arRelationInfo.clear();
                     arRelationInfo.add(new RelationInfo("livesAt", "address"));
                     arRelationInfo.add(new RelationInfo("inhabitedBy", "person"));
                     setRelationData(
                        conn
                        , Queries.RESIDIENTAL_PERSON_ADDRESS
                        , data.getLong("id")
                        , data.getDate("fromvaliditydate")
                        , arRelationInfo
                        , arLines
                     );
                     changeSemicolonIntoPoint(arLines);
                     break;

                  case "WorkHistory":
                     logger.debug("get WorkHistory relation data, Queries.WORKHISTORY_EMPLOYER_EMPLOYEE");
                     arRelationInfo.clear();
                     arRelationInfo.add(new RelationInfo("worksFor", "employer"));
                     arRelationInfo.add(new RelationInfo("has", "employee"));
                     setRelationData(
                        conn
                        , Queries.WORKHISTORY_EMPLOYER_EMPLOYEE
                        , data.getLong("id")
                        , data.getDate("fromvaliditydate")
                        , arRelationInfo
                        , arLines
                     );
                     changeSemicolonIntoPoint(arLines);
                     break;

                  default:
                     changeSemicolonIntoPoint(arLines);
                     break;
               }

               // Write the lines to the output device
               plainArrayOutputWithNewLine(arLines, out);
               out.print("\n");
            }
         }
      } catch (Exception e) {
         System.out.println("Main error: " + e);
         throw new RuntimeException("Error creating triply data: " + e);
      }
   }

   public void mainRoutine() {
      // Read source data
      try {
         Class.forName("org.h2.Driver");
      } catch (Exception e) {
         throw new RuntimeException("error loading h2 driver: " + e);
      }

      try (ConnectDatabase conn = oracleHandling ? new ConnectDatabase(
         "jdbc:oracle:thin:@b9-scan.linux.internalcorp.net:1521/A0DBKP02_prim.office01.internalcorp.net", user, pw) : null;
           Out out = Out.getInstance();
           ConnectDatabase connH2 = new ConnectDatabase("jdbc:h2:/temp/test", "sa", "1234")
      ) {
         //
         ReadModelMetadata definedModel = new ReadModelMetadata(modelData);
         definedModel.printModelData();

         // Create the H2 datamodel
         // H2 internal database is used for quering the relations between the different classes
         // H2 will be created automatically in /temp/test directory
         logger.debug("Create H2 database using file: " + databaseSchemaOfTheModel);
         connH2.dropTables("PUBLIC");

         // create databaseschema in the H2 internal database, script made by eatool
         connH2.runScript(databaseSchemaOfTheModel);

         // Create the internal array with scriptlines (arLines)
         // These lines will be later (see below) been executed by the H2 and if needed top the Oracle
         // database
         // ToDo: add abstraction to the excelReader -> source reader. Then the different
         //       source got there own implementation and below we then speak against the more
         //       generic construct. Makes it possible to read different source more easily
         logger.debug("Reading excel: " + bronDataExcel);
         try (ExcelReader er = new ExcelReader(bronDataExcel, definedModel)) {
            ArrayList<String> arLines = new ArrayList<>();

            // Read the different Excel tabs
            while (er.nextIncludingData() != null) {
               String table = er.getActiveTable();
               String fieldList = er.getAndCheckSheetFieldList();
               logger.debug("Handling table: " + table + ", " + fieldList);

               String comma = "";
               String sqlInsert = "";

               arLines.add("truncate table " + table);
               for (int row = 0; row < er.getData().size(); row++) {
                  comma = "";
                  sqlInsert = "INSERT INTO " + table + "( " + fieldList + ") VALUES (";
                  Map<Integer, FieldExcel> fldList = er.mapTableFields.get(table);
                  for (int col = 0; col < fldList.size(); col++) {

                     String column = er.getColumnNameByPos(col);
                     String dataType = definedModel.getDataType(table, column);
                     String value = er.getValueByName(row, column);

                     String quote = checkQuotedDataType(dataType);

                     if (dataType.equals("dateTime")) {
                        String d = value.substring(0, 19);
                        LocalDateTime ldt = LocalDateTime.parse(d, DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm:ss"));
                        value = String.format("%1$tY-%1$tm-%1$td %1$tH:%1$tM:%1$tS", ldt);
                        value = "{ts '" + value + "'ts}";
                        quote = "";
                     } else if (dataType.equals("date")) {
                        LocalDate ld = LocalDate.parse(value, DateTimeFormatter.ofPattern("dd-MM-yyyy"));
                        value = "{td '" + String.format("%1$tY-%1$tm-%1$td", ld) + "'td}";
                        quote = "";
                     }

                     sqlInsert = sqlInsert + comma + quote + value + quote;
                     comma = ",";
                  }
                  sqlInsert = sqlInsert + ")";
                  arLines.add(sqlInsert);
               }
            }

            out.setMedium("file");

            // Insert the arLines into H2
            logger.debug("Inserting H2");
            out.setFilename(h2script);
            formatLinesForPlatformAndOutput(arLines, "{ts ", "}", "", "'", true, out);
            connH2.runScript(h2script);

            // Insert the arLines into Oracle if required to (optional -> see oracleHandling)
            // Data model has to be there
            logger.debug("Inserting Oracle");
            out.setFilename(oracleScript);
            formatLinesForPlatformAndOutput(arLines, "to_date(", ", 'yyyy-mm-dd hh24:mi:ss')", "to_date(", "', 'yyyy-mm-dd')", false, out);
            if (oracleHandling) {
               conn.runScriptPerLine(oracleScript);
            }

            // Make the turtle file
            out.setMedium("file");
            makeTurtleData(connH2, out, definedModel);

            connH2.close();

         } catch (Exception e) {
            logger.error("Error reading excel: " + e);
         }
      } catch (Exception e) {
         System.out.println("Error in opening resources: " + e);
      }
   }

   public static void main(String[] args) {
      logger.debug("Start service CreateIndividuals");
      CreateIndividuals app = new CreateIndividuals();


      // Check the input configuration
      int nKeys = 0;
      for (Object p : app.m_appProperties.keySet()) {
         nKeys++;
         String key = p.toString();
         switch (key) {
            case "user":
               app.setUser(app.m_appProperties.getProperty(key));
               break;
            case "pw":
               app.setPw(app.m_appProperties.getProperty(key));
               break;
            case "turtlefile":
               app.setTurtleFile(app.m_appProperties.getProperty(key));
               break;
            case "pathexcel":
               app.setExcelPath(app.m_appProperties.getProperty(key));
               break;
            case "excelfile":
               app.setExcel(app.m_appProperties.getProperty(key));
               break;
            case "outputpath":
               app.setOutputDataPath(app.m_appProperties.getProperty(key));
               break;
            case "outputpathEAgenerations":
               app.setOutputPathEAGenerations(app.m_appProperties.getProperty(key));
               break;
            case "defModel":
               app.setModel(app.m_appProperties.getProperty(key));
               break;
            case "classId":
               app.setClassId(app.m_appProperties.getProperty(key));
            case "addtooracle":
               app.setOracleHandling(app.m_appProperties.getProperty(key));
               break;
            default:
               throw new RuntimeException("Unknown option " + key + "!, please check input.conf");
         }
      }

      if (nKeys != app.C_NUMBERCONFIGURATIONPARAMETERS) {
         throw new RuntimeException("Number of configuration parameters not equal to " +
            app.C_NUMBERCONFIGURATIONPARAMETERS + "\nRead configuration parameters\n" + app.m_appProperties.toString());
      } else {
         app.setFiles();
      }

      app.mainRoutine();

      logger.info("\nResults:" +
         "Directoryy: " + app.getOutputDataPath() +
         "\nFile: " + app.getOutputFile()
      );

      logger.info("\nRead dates: \n" + app.admDateCollection);
      logger.debug("\nService CreateIndividuals done!");
   }
}