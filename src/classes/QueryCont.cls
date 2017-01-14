public class QueryCont  {
    public Account acc{get;set;}
    public Boolean showPhone{get;set;}
 
    public QueryCont (){
        acc = new Account();
        showPhone = false;
    }
 
    public PageReference priorityChanged(){
        if(acc.Industry == 'Apparel'){
            showPhone = true;
        }
        else{
            showPhone = false;
        }
        return null;
    }
}