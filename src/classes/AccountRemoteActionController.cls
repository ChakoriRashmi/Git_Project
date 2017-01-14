//test>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
//Test SVN>>>>>>>>>>>>>>>______________############******************

//Test SVN>>>>>>>>>>>>>>>______________############******************
public with sharing class AccountRemoteActionController {

    ApexPages.StandardController acctController;
    public Account theAccount { get; set; }

    public AccountRemoteActionController(ApexPages.StandardController cnt) {
        this.acctController = cnt;
        this.theAccount = (Account)this.acctController.getRecord();
    }

    @RemoteAction
    public static List<Note> getNotesByAccountId(String accountId) {
        List<Note> acctNotes = [SELECT Id
                                        ,Title
                                       
                                        , OwnerId
                                        , CreatedDate
                                        , CreatedById
                                        , LastModifiedDate
                                        , LastModifiedById  
                                        FROM Note 
                                        WHERE ParentId =: accountId
                                        ORDER BY CreatedDate DESC];
        return acctNotes;
    }

}