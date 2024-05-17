package org.ppa;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.Closeable;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import java.util.Iterator;
import java.util.Map;

public class ExcelReader implements Closeable, Iterator<Sheet> {
   private static final Logger logger = LogManager.getLogger(ExcelReader.class);
   private Workbook wb;
   private Sheet activeSheet;
   private String activeTable;

   // contains from all the sheets the metadata
   Map<String, Map<Integer, FieldExcel>> mapTableFields = new HashMap<>();

   // contains from the given sheet the data: content
   ArrayList<Map<String, FieldExcel>> arExcelData = new ArrayList<>();

   ReadModelMetadata definedModel;

   ExcelReader(String excelFileName, ReadModelMetadata model) {
      definedModel = model;
      try {
         final FileInputStream inputStream = new FileInputStream(excelFileName);
         wb = new XSSFWorkbook(inputStream);

         Iterator<Sheet> sheetIterator = wb.sheetIterator();
         while (sheetIterator.hasNext()) {
            Sheet sheet = sheetIterator.next();
            String table = sheet.getSheetName().toLowerCase();

            if (definedModel.checkIfClassExists(table)) {
               Map<Integer, FieldExcel> mapfields = new HashMap<>();
               for (int i = 0; i < sheet.getRow(0).getLastCellNum(); i++) {
                  String field = sheet.getRow(0).getCell(i).getStringCellValue();
                  mapfields.put(i, new FieldExcel(field, null, null));
               }
               mapTableFields.put(table, mapfields);
            }
         }
      } catch (Exception e) {
         System.out.println("Error making wb: " + e);
         throw new RuntimeException("Error making metadata from Excel");
      }
   }

   public Sheet getActiveSheet() {
      return activeSheet != null ? activeSheet : null;
   }

   public String getActiveTable() {
      return activeTable;
   }

   public ArrayList<Map<String, FieldExcel>> getDataActiveFromSheet() {
      if (activeSheet != null) {
         return getDataFromActiveSheet();
      } else {
         return null;
      }
   }

   public ArrayList<Map<String, FieldExcel>> getDataFromActiveSheet() {
      arExcelData.clear();

      if (activeSheet == null) {
         throw new RuntimeException("activeSheet has not been set!");
      }

      // Read the data
      try {
         int nRows = activeSheet.getLastRowNum() + 1; // zero based!
         for (int row = 1; row < nRows; row++) {
            Map<String, FieldExcel> mapFields = new HashMap<>();
            arExcelData.add(mapFields);
            int nColumns = activeSheet.getRow(row).getLastCellNum();
            for (int col = 0; col < nColumns; col++) {
               String field = mapTableFields.get(activeTable).get(col).name.toLowerCase();
               Cell cell = activeSheet.getRow(row).getCell(col);
               String value = "";
               String type = cell.getCellType().toString();

               if (type.equals("NUMERIC")) {
                  value = String.valueOf(cell.getNumericCellValue());
               } else {
                  value = cell.getStringCellValue();
               }
               arExcelData.get(row - 1).put(field, new FieldExcel(field, null, value));
            }
         }
      } catch (Exception e) {
         logger.error("Error reading the data for: " + activeTable + ", " + e);
      }
      return arExcelData;
   }

   public void printData() {
      for (int i = 0; i < arExcelData.size(); i++) {
         Map<String, FieldExcel> rowfields = arExcelData.get(i);
         for (Map.Entry<String, FieldExcel> fld : rowfields.entrySet()) {
            System.out.println(fld.getValue().name + " -> " + fld.getValue().stringValue);
         }
      }
   }

   public ArrayList<Map<String, FieldExcel>> getData() {
      return arExcelData;
   }

   public String getColumnNameByPos(int pos) {
      return mapTableFields.get(activeTable).get(pos).name;
   }

   public String getValueByName(int row, String column) {
      return arExcelData.get(row).get(column.toLowerCase()).stringValue;
   }

   @Override
   public void close() throws IOException {
      wb.close();
   }

   public void setActiveSheet(String name) {
      activeSheet = wb.getSheet(name);
      activeTable = activeSheet.getSheetName().toLowerCase();
   }

   public void setActiveSheetIncludingData(String name) {
      activeSheet = wb.getSheet(name);
      activeTable = activeSheet.getSheetName().toLowerCase();
      getDataFromActiveSheet();
   }

   public String getAndCheckSheetFieldList() {
      String fieldList = "";
      Map<Integer, FieldExcel> mapField = mapTableFields.get(activeTable.toLowerCase());

      // get the metatabel from the model, needed for checking the excel fields
      Map<String, ModelFieldmeta> fieldsOfDefinedModel = definedModel.mapMetadata.get(activeTable.toLowerCase());
      try {
         String comma = "";
         for (int col = 0; col < mapField.size(); col++) {
            // get the Excel field
            FieldExcel excelField = mapField.get(col);

            // check in the model
            if (fieldsOfDefinedModel.containsKey(excelField.name.toLowerCase())) {
               fieldList = fieldList + comma + excelField.name;
            } else {
               System.out.println("Field error on: " + excelField.name);
               throw new RuntimeException("Field '" + excelField.name.toLowerCase() + "' in sheet: " + activeSheet.getSheetName() + " not in the read model!");
            }
            comma = ",";
         }
      } catch (Exception e) {
         logger.error("Checking fields error: " + e);
         throw new RuntimeException("Field Excel not correct!");
      }
      return fieldList;
   }

   @Override
   public boolean hasNext() {
      if (activeSheet != null) {
         return wb.getSheetIndex(activeSheet.getSheetName()) < wb.getNumberOfSheets() - 1;
      } else {
         return wb.getNumberOfSheets() > 0;
      }
   }

   public Sheet nextIncludingData() {
      if (next() != null) {
         getDataFromActiveSheet();
      }
      return activeSheet;
   }

   @Override
   public Sheet next() {
      if (activeSheet != null) {
         int activeSheetIndex = wb.getSheetIndex(activeSheet.getSheetName());

         activeSheetIndex++;
         while (activeSheetIndex < wb.getNumberOfSheets() && !definedModel.checkIfClassExists(wb.getSheetName(activeSheetIndex))) {
            activeSheetIndex++;
         }

         if (activeSheetIndex < wb.getNumberOfSheets()) {
            setActiveSheet(wb.getSheetAt(activeSheetIndex).getSheetName());
            return activeSheet;
         } else {
            activeSheet = null;
            activeTable = null;
            return null;
         }
      } else {
         setActiveSheet(wb.getSheetAt(0).getSheetName());
         return activeSheet;
      }
   }
}