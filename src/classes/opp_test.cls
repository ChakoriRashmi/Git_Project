@isTest
public class opp_test {
         static testMethod void Test1()
         {
             Opportunity opt = New Opportunity(Name='test',CloseDate=system.today(),StageName='teststage');
             ApexPages.StandardController sc = new ApexPages.StandardController(opt);
             opp o = new opp(sc);

         }


}