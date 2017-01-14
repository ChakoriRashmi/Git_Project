@isTest
public class button_test {
    static testMethod void Test1()
    {
       Account acc = new Account();
        acc.name='test';
        acc.type='test';
        acc.Industry='test';
        
        button bu = new button();
        bu.getmethod();
        bu.showall();
        bu.showinlimit();
        bu.showinascendingorder();
    }

}