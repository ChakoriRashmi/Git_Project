public class Oppextn {

    Opportunity o;
    
    public Oppextn(ApexPages.StandardController opptyStd) {
         o = (opportunity)opptyStd.getRecord();

    }
      
   public pagereference save()
   {
list<opportunity> opp = [select id,name from opportunity WHERE accountid = :o.AccountId];
       if(opp.size()<1){
           insert o;
           ApexPages.Message myMsg1 = new ApexPages.Message(ApexPages.Severity.CONFIRM,'Oppty Created');//Same old drama 
            ApexPages.addMessage(myMsg1);
        }
        else{
            ApexPages.Message myMsg = new ApexPages.Message(ApexPages.Severity.ERROR,'Oppty Exists');//Same old drama 
            ApexPages.addMessage(myMsg);
        }
        return null;
    }
   }