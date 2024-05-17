package org.ppa;

import java.io.*;
import java.nio.charset.StandardCharsets;

public class Out implements Closeable {

   private static Out instance;
   private String medium = "console";
   private File file;
   private FileOutputStream fileOutput = null;
   ;

   private Out() {
   }

   public static Out getInstance() {
      if (instance == null) {
         instance = new Out();
      }
      return instance;
   }

   public void setMedium(String medium) {
      this.medium = medium;
   }

   public void setFilename(String filename) {
      this.file = new File(filename);

      try {
         if (fileOutput != null) {
            this.fileOutput.close();
         }
         fileOutput = new FileOutputStream(file);

      } catch (Exception e) {
         System.out.println("Error changing file: " + e);
      }
   }

   public void print(String content) throws Exception {
      if (medium.equals("console")) {
         System.out.print(content);
      } else {
         fileOutput.write(content.getBytes(StandardCharsets.UTF_8));
      }
   }

   @Override
   public void close() throws IOException {
      if (fileOutput != null) {
         fileOutput.close();
      }
   }

}
