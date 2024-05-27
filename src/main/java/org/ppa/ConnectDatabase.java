package org.ppa;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.BufferedReader;
import java.io.Closeable;
import java.io.FileReader;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;

public class ConnectDatabase implements Closeable {
   private static final Logger logger = LogManager.getLogger(ConnectDatabase.class);
   private static ConnectDatabase instance;
   private Connection m_Conn;

   public ConnectDatabase(String connectstring, String user, String pw) {
      try {
         m_Conn = DriverManager.getConnection(connectstring, user, pw);
      } catch (SQLException e) {
         throw new RuntimeException("SQLException " + e);
      } catch (Exception e) {
         throw new RuntimeException("Exception, error initializing state for: ");
      }
   }

   public Connection getConnection() {
      return m_Conn;
   }

   @Override
   public void close() throws IOException {
      // close resource
      try {
         m_Conn.close();
      } catch (Exception e) {
         System.out.println("close error: " + e);
      }
   }

   public ResultSet getData(String tableName) {
      ResultSet result = null;

      try {
         Statement stmt = m_Conn.createStatement();
         String query = "select * from " + tableName + " order by id, fromvaliditydate";
         result = stmt.executeQuery(query);
      } catch (Exception e) {
         System.out.println("error in getData for tableName: " + tableName + ", error: " + e);
         throw new RuntimeException("Error in getting the data for: " + tableName + "\n" + e);
      }
      return result;
   }

   public ResultSet getQueryData(String query) {
      logger.debug("getQueryData");
      logger.debug("query: \n" + query);
      ResultSet result = null;
      try {
         PreparedStatement statement = m_Conn.prepareStatement(query);
         result = statement.executeQuery();
      } catch (SQLException ex) {
         throw new RuntimeException(ex);
      }
      return result;
   }

   public boolean executeStatement(String statement) {
      logger.debug("executeStatement");
      logger.debug("Statement: " + statement);
      boolean bOk = true;
      try {
         PreparedStatement stmnt = m_Conn.prepareStatement(statement);
         stmnt.execute();
      } catch(Exception e) {
         bOk = false;
         System.out.println(statement);
         System.out.println("Error executing statement: " + e);
      }
      return bOk;
   }

   public ArrayList<String> getTables(String schema) {
      ArrayList<String> arTables = new ArrayList<>();
      try {
         DatabaseMetaData metadata = m_Conn.getMetaData();
         String[] types = {"TABLE", "SYSTEM TABLE"};
         ResultSet rs = metadata.getTables("TEST", schema, "%", types);
         while(rs.next()){
            arTables.add(rs.getString(3));
            System.out.print(rs.getString(1) + ", ");
            System.out.print(rs.getString(2) + ", ");
            System.out.print(rs.getString(3) + ", ");
            System.out.println(rs.getString(4));
         }
      } catch(Exception e) {
         logger.error(e);
      }
      return arTables;
   }

   public void dropTables(String schema){
      ArrayList<String> arTables = getTables(schema);
      try {
         Statement statement = m_Conn.createStatement();
         for (String str : arTables) {
            statement.execute("drop table " + schema + "." + str);
         }
      } catch(Exception e) {
         logger.error(e);
      }
   }

   public void runScript(String fileName) {
      try (BufferedReader reader = new BufferedReader(new FileReader(fileName))) {

         Statement statement = m_Conn.createStatement();
         StringBuilder script = new StringBuilder();
         String line;
         while ((line = reader.readLine()) != null) {
            logger.debug("Script line -> " + line );
            script.append(line).append("\n");
         }

         // Voer de SQL-statements uit
         statement.execute(script.toString());
      } catch (Exception e) {
         logger.error(e);
         throw new RuntimeException("Error running script: " + fileName +
         "\n" + e
            );
      }
   }

   public void runScriptPerLine(String fileName) {
      try (BufferedReader reader = new BufferedReader(new FileReader(fileName))) {
         Statement statement = m_Conn.createStatement();
         String line;
         while ((line = reader.readLine()) != null) {
            logger.debug("-> line: " + line);
            statement.execute(line);
         }
      } catch (Exception e) {
         logger.error(e);
      }
   }

   public ResultSet getPk(String tableName) throws Exception {
      return m_Conn.getMetaData().getPrimaryKeys(null, null, tableName);
   }
}