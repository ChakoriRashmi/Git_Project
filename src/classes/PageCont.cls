public class PageCont{
public integer list_size=20;
public integer counter=0;
public list<Account> acc{get;set;}

    public PageCont(){
        acc= [Select Id, Name,Phone From Account Limit: list_size Offset : counter];
        system.debug('>>>>>>>>>>>>>'+acc);
    }
    
    public PageReference Beginning() {
      counter = 0;
      return null;
   }
   
    
  
    
}