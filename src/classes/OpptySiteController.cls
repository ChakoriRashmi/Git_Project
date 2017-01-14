public class OpptySiteController {
public List<Account> acc{get;set;}
public boolean show{get;set;}
   

public Opportunity Opp{get;set;}

public OpptySiteController() {




}
    public PageReference SearchData() {
    
        acc =[SELECT Id, Name,phone, (SELECT AccountId, Name, Email FROM Contacts), (SELECT AccountId, Amount, StageName FROM Opportunities) FROM Account];
         show=true;
        return null;
    }


    public PageReference SearchSalesforce() {
       PageReference pr = new PageReference('/apex/SearchSalesforcePage');
       return pr;
        
    }
    
      public PageReference backToList(){
        String pageLink ='/apex/SearchSalesforceButton';
        PageReference oppLstPage = new PageReference(pageLink);
        oppLstPage.setRedirect(true);
        return oppLstPage;
    }

}