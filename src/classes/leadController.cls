public class leadController
{
//changes 1
//changes 2
//changes 3
    Public lead lObj;
    Public Id leadId;
    public leadController(ApexPages.StandardController stdController)
    {
        leadId = ApexPages.currentPage().getParameters().get('id');
        lObj = (leadid == null) ? new Lead():[SELECT Money_Order__c, Money_Transfer__c from lead where id =: leadid];
    }
    public PageReference autoRun()
    {
        Database.LeadConvert lc = new database.LeadConvert();
        lc.setLeadId(leadId);
        LeadStatus convertStatus = [Select Id, MasterLabel from LeadStatus where IsConverted=true limit 1];
        lc.setConvertedStatus(convertStatus.MasterLabel);
        if(lObj.Money_Order__c == true || lObj.Money_Transfer__c == true){
        Database.LeadConvertResult lcr = Database.convertLead(lc);
        System.assert(lcr.isSuccess());
        Id oppId = lcr.getOpportunityId();
        PageReference Page = new PageReference('<a href="https://cs3.salesforce.com/"+oppId target="_blank" rel="nofollow">https://cs3.salesforce.com/+oppId</a>');
        Page.setRedirect(true);
        return Page;
        }
        else{
        lObj.addError('Lead cannot be converted without Product Selection !');
        lObj.addError('Please Select Atleast One Product');
        }
        return null;
    }
    Public PageReference RedirecttoLead(){
        PageReference Page = new PageReference('<a href="https://cs3.salesforce.com/+leadId" target="_blank" rel="nofollow">https://cs3.salesforce.com/+leadId</a>');
        Page.setRedirect(true);
        return Page;
    }
}