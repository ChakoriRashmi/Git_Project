public class relatedlist {
public Account account{get;set;}
public string ss{get;set;}
public relatedlist(){

ss =apexpages.currentpage().getparameters().get('id');  
}
}