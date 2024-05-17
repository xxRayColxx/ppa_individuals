package org.ppa;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.*;
import java.net.URI;
import java.net.URL;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.List;


public class AdmDateCollection {
   private static final Logger logger = LogManager.getLogger(CreateIndividuals.class);
   private List<String> arDates = new ArrayList<>();

   AdmDateCollection(String path) {
      loadDatesFromFile(path);
   }

   private void loadDatesFromFile(String path) {
      ClassLoader loader = this.getClass().getClassLoader();

      try {
         logger.debug("reading dates.....");
         File file =   Path.of(path + "/AdministrationDates.txt").toFile();
         logger.debug("dates path: " + file);
         FileInputStream fileInputStream = new FileInputStream(file);
         InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);
         BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

         String line;
         while ((line = bufferedReader.readLine()) != null) {
           arDates.add(line);  // Process each line as needed
         }

         logger.info("\nDates to read: " + arDates.toString() + "\n");

      } catch (Exception e) {
         throw new RuntimeException(e);
      }
   }

   public String nextDate(String currentDate) {
      int ind = currentDate == null ? 0 : arDates.indexOf(currentDate);

      if (ind + 1 < arDates.size()) {
         return arDates.get(ind + 1);
      } else {
         return null;
      }
   }

   public String toString() {
      StringBuilder sb = new StringBuilder();
      for( String line : arDates) {
          sb.append(line).append("\n");
      }
      return sb.toString();
   }
}
