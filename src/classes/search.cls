public class search {

 string name;
 list <account> acc;
 
 public string getname()
 {
     return name;
 }
 
 public list<account> getacc()
 {
     return acc;
 }
 
 public void setname(string n)
 {
     name=n;
 }
 
 public pagereference show()
 {
 acc= [select name from Account];
     return null;
 }
}