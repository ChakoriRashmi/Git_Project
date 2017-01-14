public class Oppty {

    public String OCR { get; set; }

   
public List<OpportunityContactRole> OCR1 {get;set;}

public String uname{get;set;}
public String selectedoppid{get;set;}

public Oppty(){

        uname = apexpages.currentpage().getparameters().get('uname');
        selectedoppid = apexpages.currentpage().getparameters().get('oppid');
        
List<OpportunityContactRole>OCR = [SELECT ID,Contact.Email FROM OpportunityContactRole WHERE  Id=: selectedoppid ];


}

}