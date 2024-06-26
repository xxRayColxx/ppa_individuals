package org.ppa;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public enum Queries {

   // TODO generate this information from the UML model!
   ROLE_CUSTOMER(""+
      "select p.id\n" +
      ",      p.fromvaliditydate as fromvaliditydate\n" +
      ",      c.id as customer_id\n" +
      ",      c.fromvaliditydate as customer_fvd\n" +
      "from person p\n" +
      "join link_person_role l_pr on l_pr.person_id = p.id\n" +
      "join role r on l_pr.role_id = r.id\n" +
      "   and r.fromvaliditydate <= [administrationstatedate]\n" +
      "   and r.tillvaliditydate > [administrationstatedate]\n" +
      "join customer c on c.id = r.id\n" +
      "   and c.fromvaliditydate <= [administrationstatedate]\n" +
      "   and c.tillvaliditydate > [administrationstatedate]\n" +
      "where p.id = [id]\n" +
      "and   p.fromvaliditydate <= [administrationstatedate]\n" +
      "and   p.tillvaliditydate > [administrationstatedate]\n" +
      "order by 2, 3, 4"
   ),
   ROLE_EMPLOYEE(""+
      "select p.id\n" +
      ",      p.fromvaliditydate as fromvaliditydate\n" +
      ",      e.id as employee_id\n" +
      ",      e.fromvaliditydate as employee_fvd\n" +
      "from person p\n" +
      "join link_person_role l_pr on l_pr.person_id = p.id\n" +
      "join role r on l_pr.role_id = r.id\n" +
      "   and r.fromvaliditydate <= [administrationstatedate]\n" +
      "   and r.tillvaliditydate > [administrationstatedate]\n" +
      "join employee e on e.id = r.id\n" +
      "   and e.fromvaliditydate <= [administrationstatedate]\n" +
      "   and e.tillvaliditydate > [administrationstatedate]\n" +
      "where p.id = [id]\n" +
      "and   p.fromvaliditydate <= [administrationstatedate]\n" +
      "and   p.tillvaliditydate > [administrationstatedate]\n" +
      "order by 2, 3, 4"
   ),
   CUSTOMER_PERSON("" +
      "select c.id\n" +
      ",      c.fromvaliditydate as fromvaliditydate\n" +
      ",      p.id as person_id\n" +
      ",      p.fromvaliditydate as person_fvd\n" +
      "from customer c\n" +
      "join role r on c.id = r.id\n" +
      "   and r.fromvaliditydate <= [administrationstatedate]\n" +
      "   and r.tillvaliditydate > [administrationstatedate]\n" +
      "join link_person_role l_pr on l_pr.role_id = r.id\n" +
      "join person p on p.id = l_pr.person_id\n" +
      "   and p.fromvaliditydate <= [administrationstatedate]\n" +
      "   and p.tillvaliditydate > [administrationstatedate]\n" +
      "where c.id = [id]\n" +
      "and   c.fromvaliditydate <= [administrationstatedate]\n" +
      "and   c.tillvaliditydate > [administrationstatedate]\n" +
      "order by 2, 3, 4"
   ),
   EMPLOYEE_PERSON( "" +
      "select e.id\n" +
      ",      e.fromvaliditydate as fromvaliditydate\n" +
      ",      p.id as person_id\n" +
      ",      p.fromvaliditydate as person_fvd\n" +
      "from employee e\n" +
      "join role r on e.id = r.id\n" +
      "   and r.fromvaliditydate <= [administrationstatedate]\n" +
      "   and r.tillvaliditydate > [administrationstatedate]\n" +
      "join link_person_role l_pr on l_pr.role_id = r.id\n" +
      "join person p on p.id = l_pr.person_id\n" +
      "   and p.fromvaliditydate <= [administrationstatedate]\n" +
      "   and p.tillvaliditydate > [administrationstatedate]\n" +
      "where e.id = [id]\n" +
      "and   e.fromvaliditydate <= [administrationstatedate]\n" +
      "and   e.tillvaliditydate > [administrationstatedate]\n"+
      "order by 2, 3, 4"
   ),
   SAVINGSACCOUNT(""+
      "select distinct s.id\n" +
      ",      s.fromvaliditydate as fromvaliditydate\n" +
      ",      c.id as customer_id\n" +
      ",      c.fromvaliditydate as customer_fvd\n" +
      "from   savingsaccount s\n" +
      "join customer c on c.id = s.id\n" +
      "   and c.fromvaliditydate <= [administrationstatedate]\n" +
      "   and c.tillvaliditydate > [administrationstatedate]\n" +
      "where  s.id = [id]\n" +
      "and s.fromvaliditydate <= [administrationstatedate]\n" +
      "and s.tillvaliditydate > [administrationstatedate]\n"+
      "order by 2, 3, 4"
   ),
   RESIDIENTAL_PERSON_ADDRESS("" +
      "select rp.id\n" +
      ",      rp.fromvaliditydate as fromvaliditydate\n" +
      ",      a.id as address_id\n" +
      ",      p.id as person_id\n" +
      ",      a.fromvaliditydate as address_fvd\n" +
      ",      p.fromvaliditydate as person_fvd\n" +
      "from residentialperiod rp\n" +
      "join link_residentialperiod l_rp on l_rp.residentialperiod_id = rp.id\n" +
      "join address a on a.id = l_rp.address_id\n" +
      "   and a.fromvaliditydate <= [administrationstatedate]\n" +
      "   and a.tillvaliditydate > [administrationstatedate]\n" +
      "join person p on p.id = l_rp.person_id\n" +
      "   and p.fromvaliditydate <= [administrationstatedate]\n" +
      "   and p.tillvaliditydate > [administrationstatedate]\n" +
      "where rp.id = [id]\n" +
      "and rp.fromvaliditydate <= [administrationstatedate]\n" +
      "and rp.tillvaliditydate > [administrationstatedate]\n" +
      "order by 2, 3, 4, 5, 6"
   ),
   WORKHISTORY_EMPLOYER_EMPLOYEE("" +
      "select w.id\n"+
      ",      w.fromvaliditydate as fromvaliditydate\n" +
      ",      e.id as employee_id\n" +
      ",      em.id as employer_id\n" +
      ",      e.fromvaliditydate as employee_fvd\n" +
      ",      em.fromvaliditydate as employer_fvd\n" +
      "from workhistory w\n" +
      "join link_workhistory l_w on l_w.workhistory_id = w.id\n" +
      "join employee e on e.id = l_w.employee_id\n" +
      "   and e.fromvaliditydate <= [administrationstatedate]\n" +
      "   and e.tillvaliditydate > [administrationstatedate]\n" +
      "join employer em on em.id = l_w.employer_id\n" +
      "   and em.fromvaliditydate <= [administrationstatedate]\n" +
      "   and em.tillvaliditydate > [administrationstatedate]\n" +
      "where w.id = [id]\n" +
      "and w.fromvaliditydate <= [administrationstatedate]\n" +
      "and w.tillvaliditydate > [administrationstatedate]\n" +
      "order by 2, 3, 4, 5, 6"
   );

   private String query;

   Queries(String query) {
      this.query = query;
   }

   public String getParameteredQuery(Long id, String admStateDate) {

      //check format date -> for now has to be yyyy-mm-dd
      try {
         SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
         format.parse(admStateDate);
      } catch (ParseException e) {
         throw new RuntimeException("date format not correct: " + admStateDate);
      }
      String dateTimeForH2 = "{ts '" + admStateDate + " 00:00:00'}";
      return query.replace("[administrationstatedate]", dateTimeForH2 ).replace("[id]", id.toString());
   }

   public String getQuery(){
      return query;
   }
}
