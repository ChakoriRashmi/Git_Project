@istest
public class table_test {
    static testMethod void Test1()
    {
		Account acnt = New Account (name ='test',type='test1',phone='123456');   
        insert acnt;
        Opportunity opp = New Opportunity(Name='test',CloseDate=System.today() , StageName='Prospecting');
        insert opp;
        
        table ta = new table();
        ta.getacc();
        ta.getopp();
    }


}