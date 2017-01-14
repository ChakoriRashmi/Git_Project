Global class BirthdayBonus implements Database.batchable<Sobject>{
    public Database.QueryLocator start(Database.BatchableContext jobId){
    
    return Database.getQueryLocator([select id,Salary__c,BirthDate__C from Account where BirthDate__c =: System.today()]);
    }
  // Check??
  //LLLLLLLLLLL
 //>>>>>>>>>>>>>>>>>>
    public Void execute(Database.BatchableContext jobId, List<sObject> recordList){
    List<Account> accList = new List<Account>();
        for(Sobject accO:recordList){
         Account acc = new Account();
            acc =   (Account)accO;
            acc.Salary__c +=100;
            accList.add(acc);
           
        }
        update accList;
    }
    public Void finish(Database.BatchableContext jobId){
    }
}