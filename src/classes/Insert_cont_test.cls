@istest
public class Insert_cont_test{
    static testMethod void Test1()
    {
      Account acc = New Account(Name ='test');  
      insert acc;
      Insert_cont InsCo = new Insert_cont();
      InsCo.getacc();
      //InsCo.save();
        
    }
}