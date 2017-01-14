public class actextn {
    public actextn(ApexPages.StandardSetController controller) {
    }
        List<account>acc=[Select name , Phone from account];
        public List<account> getacc(){
        return acc;
        }
}