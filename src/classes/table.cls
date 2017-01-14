public class table
{
    account[] acc = [Select name,phone,type from account limit 10];
    public account[] getacc()
    {
    return acc;
    }

    list<Opportunity> opp =[Select Name,StageName,Type from Opportunity limit 10];
    public list<Opportunity> getopp()
    {
    return opp;
    }
}