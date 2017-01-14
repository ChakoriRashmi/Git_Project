public class BaseballCardController {
//>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
        public Contact ListContact{get;set;}
        public string contactName{get;set;}
         public String conid=''; 
        
        public BaseballCardController(ApexPages.StandardController stdController) {
                conid = Apexpages.currentpage().getparameters().get('id');
                ListContact = new Contact();
                
                ListContact = [SELECT AccountId,Birthdate,Department,Email,Employer__c,FirstName,Gender__c,Id,LastName,MailingAddress,MailingCity,MailingCountry,Name,Phone,Title FROM Contact where Id =:conid];
                
                contactName = ListContact.LastName;
                
                if(ListContact.FirstName != null){
                        contactName = ListContact.FirstName + ' '+ contactName;
                        if(ListContact.Title != null){
                                contactName = contactName+' '+ListContact.Title;
                        }
                }
        

        }
}