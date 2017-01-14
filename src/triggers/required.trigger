Trigger required on Contact(before insert){
    for(Contact con: Trigger.New)
    if(Con.Phone==Null)
    {
        //Con.addError('Please Enter Phone field');
        Con.Phone='9430012823';
        
    }
    
    
}