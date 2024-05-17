package org.ppa;

import java.io.BufferedReader;
import java.io.FileReader;
import java.util.*;

public class ReadModelMetadata implements Iterator<ModelFieldmeta> {
   private final int C_CLASS = 0;
   private final int C_ATTRIBUTE = 1;
   private final int C_DATATYPE = 2;
   private final int C_KEYFIELD = 3;
   public Map<String, Map<String, ModelFieldmeta>> mapMetadata = new HashMap<>();
   public Map<String, String> mapClassNames = new LinkedHashMap<>();

   public Map<String, ArrayList<String>> mapKeyFieldsPerClass = new HashMap<>();

   int currentClassName = -1;

   ReadModelMetadata(String file) {
      try (FileReader fileReader = new FileReader(file);
           BufferedReader bufferedReader = new BufferedReader(fileReader)) {

         // Read lines from the file
         String line;
         while ((line = bufferedReader.readLine()) != null) {
            String[] elem = line.split(",");

            if (!mapMetadata.containsKey(elem[C_CLASS].toLowerCase())) {
               mapMetadata.put(elem[C_CLASS].toLowerCase(), new HashMap<>());
               mapClassNames.put(elem[C_CLASS].toLowerCase(), elem[C_CLASS]);
            }
            ModelFieldmeta modelField = new ModelFieldmeta(elem[C_ATTRIBUTE], elem[C_DATATYPE], elem[C_KEYFIELD]);

            mapMetadata.get(elem[C_CLASS].toLowerCase())
               .put(elem[C_ATTRIBUTE].toLowerCase(), modelField);

            if (modelField.isKeyField()) {
               if (!mapKeyFieldsPerClass.containsKey(elem[C_CLASS].toLowerCase())) {
                  mapKeyFieldsPerClass.put(elem[C_CLASS].toLowerCase(), new ArrayList<>());
               }
               mapKeyFieldsPerClass.get(elem[C_CLASS].toLowerCase()).add(elem[C_ATTRIBUTE].toLowerCase());
            }
         }
      } catch (Exception e) {
         e.printStackTrace();
         throw new RuntimeException("Error reading the model metadata! of: " + file);
      }
   }

   public ArrayList<String> getKeyListForClass(String modelClass) {
      return mapKeyFieldsPerClass.getOrDefault(modelClass.toLowerCase(), null);
   }

   public String getDataTypeCurrentClassname(String column) {
      if (currentClassName != -1) {
         String[] arClassNames = mapClassNames.keySet().toArray(new String[0]);
         return mapMetadata.get(arClassNames[currentClassName]).get(column.toLowerCase()).datatype;
      } else {
         return null;
      }
   }

   public Map<String, ModelFieldmeta> getFieldsCurrentClassname() {
      if (currentClassName != -1) {
         String[] arClassNames = mapClassNames.keySet().toArray(new String[0]);
         return mapMetadata.get(arClassNames[currentClassName]);
      } else {
         return null;
      }
   }

   public String getDataType(String table, String column) {
      return mapMetadata.get(table.toLowerCase()).get(column.toLowerCase()).datatype;
   }

   void printModelData() throws Exception {
      Out out = Out.getInstance();
      out.setMedium("console");

      for (Map.Entry<String, Map<String, ModelFieldmeta>> entry : mapMetadata.entrySet()) {
         out.print("Class: " + entry.getKey() + "\n");
         for (Map.Entry<String, ModelFieldmeta> el : entry.getValue().entrySet()) {
            out.print("..." + el.getKey() + ": " + el.getValue().toString() + "\n");
         }
      }
   }

   public void resetCurrentClassNameIterator() {
      currentClassName = -1;
   }

   public String getCurrentActiveClassName() {
      String[] arClassNames = mapClassNames.keySet().toArray(new String[0]);
      return currentClassName == -1 ? null : mapClassNames.get(arClassNames[currentClassName]);
   }

   public boolean checkIfClassExists(String name) {
      return mapClassNames.containsKey(name.toLowerCase());
   }

   public String nextClassWithoutLink() {
      String[] arClassNames = mapClassNames.keySet().toArray(new String[0]);
      currentClassName++;
      while (currentClassName != -1 && arClassNames[currentClassName].startsWith("link")) {
         currentClassName++;
         if (currentClassName == arClassNames.length) {
            currentClassName = -1;
         }
      }
      return currentClassName == -1 ? null : arClassNames[currentClassName];
   }

   @Override
   public boolean hasNext() {
      return false;
   }

   @Override
   public ModelFieldmeta next() {
      return null;
   }
}
