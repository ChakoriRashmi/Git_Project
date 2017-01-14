public class button
{
//________asdfghjkl;
//asdfghjklugfdtdrgfcgfgbfvc
//testttttttttttttttttttt
    Account[]  acc;
   
    
    public Account[] getmethod()
    {
        return acc;
    }
    public pagereference showall()
    {
      acc= [Select name,type,phone,industry from account];
      return null;
    }
    
    public pagereference showinlimit()
    {
      acc= [Select name,type,phone,industry from account Limit 10];
    return null;
    }
      public pagereference showinascendingorder()
    {
      acc= [Select name,type,phone,industry from account ORDER BY Name ASC NULLS LAST];
    return null;
    }
}