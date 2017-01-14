@istest
public class trig_test {
    static testmethod void test1()
    {
        account acc = new account(name ='test',type='test1',phone='123456');
        insert acc;
        apexpages.StandardController sc = new apexpages.StandardController(acc);
        trig a = new trig(sc);
        
    }

}