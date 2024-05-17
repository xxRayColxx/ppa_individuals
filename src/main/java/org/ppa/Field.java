package org.ppa;

public class Field<T> {
   public String name;
   public String datatype;

   public T value;

   public Field(String name, String datatype, T value) {
      this.name = name;
      this.datatype = datatype;
      this.value = value;
   }
}
