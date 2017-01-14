public class opp {

    public opp(ApexPages.StandardController controller) {
     Opportunity op=new Opportunity ();
    op.Name='test';
    system.debug('---------'+op);
    insert op;
    }
}