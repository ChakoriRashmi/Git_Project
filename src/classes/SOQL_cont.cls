public class SOQL_cont{

public List<Account>acc { get; set; }
  
 public SOQL_cont(){
 acc=[SELECT id, Name from Account];
 }
 
 public void offset(){
 acc=[SELECT id, Name from Account offset 5];
 }
 
 public void few(){
 acc=[SELECT id, Name from Account limit 5];
 }
 
 public void Allrecords(){
  acc=[SELECT id, Name from Account ALL ROWS];
 }
 
 public void deleted(){
   acc=[SELECT id, Name from Account WHERE IsDeleted = true ALL ROWS];
 }
}