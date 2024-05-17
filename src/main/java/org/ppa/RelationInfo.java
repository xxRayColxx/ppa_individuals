package org.ppa;

public class RelationInfo {
   public String relationName;
   public String relationWith;

   public RelationInfo(String name, String with){
      this.relationName = name;
      this.relationWith = with;
   }

   public String toString() {
      return relationName + " <-> " + relationWith;
   }
}
