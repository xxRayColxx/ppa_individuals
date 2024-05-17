package org.ppa;

public class ModelFieldmeta extends Fieldmeta{

   public String m_strType;
   public int m_nScale;
   public int m_nLength;
   public int m_nPrecision;
   public boolean m_keyField;

   ModelFieldmeta(String name, String dataType, String keyField) {
      super(name, dataType);
      m_strType = dataType;
      setLength();
      this.datatype = m_strType;
      m_keyField = (keyField.equals("1"));
   }

   void setLength() {
      try {
         if (m_strType != null) {
            if (m_strType.contains("(")) {

               String strDefinition = m_strType.contains(")") ?
                  m_strType.substring(m_strType.indexOf("(") + 1, m_strType.indexOf(")")) :
                  m_strType.substring(m_strType.indexOf("(") + 1, m_strType.length());

               m_strType = m_strType.substring(0, m_strType.indexOf("(")).trim();

               if (strDefinition.contains(",")) {
                  m_nLength = Integer.parseInt(strDefinition.substring(0, strDefinition.indexOf(",")));
                  m_nScale = Integer.parseInt(strDefinition.substring(strDefinition.indexOf(",") + 1));
                  m_nPrecision = m_nPrecision + m_nLength;
               } else {
                  m_nLength = Integer.parseInt(strDefinition);
                  m_nScale = 0;
                  m_nPrecision = m_nLength;
               }
            }
         } else {
            m_strType = null;
         }
      } catch (Exception e) {
         System.out.println("e: " + e + ", attribute: " + this);
      }
   }

   public boolean isKeyField() {
      return m_keyField;
   }
   public String toString(){
      return name + " - " + datatype + " - keyfield: " + m_keyField;
   }
}
