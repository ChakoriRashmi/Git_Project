@isTest
public class actextn_test {
     static testMethod void Test1()
     {
      
     Test.startTest();
    account acc = new account(name ='test',type='test1',phone='123456');
    insert acc;
   ApexPages.StandardController sc = new ApexPages.StandardController(acc);
    Test.stopTest();
     }
}