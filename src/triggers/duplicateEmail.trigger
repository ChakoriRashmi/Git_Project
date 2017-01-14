trigger duplicateEmail on Contact(before insert)
    {

    Map<String, Contact> conMap = new Map<String, Contact>();
    for (Contact Contact : System.Trigger.new) {
    
        if ((Contact.Email != null) &&
                (System.Trigger.isInsert ||
                (Contact.Email != System.Trigger.oldMap.get(Contact.Id).Email))){ 
    
            if (conMap.containsKey(Contact.Email)){
                Contact.Email.addError('Another Contact has the '+'same email address.');
            }{
                conMap.put(Contact.Email, Contact);
            }
       }
    }
    
    for (Contact Contact : [SELECT Email FROM Contact WHERE Email IN :conMap.KeySet()]){
        Contact newCon = conMap.get(Contact.Email);
        newCon.Email.addError('A Contact with this email ' +'address already exists.');
    }
}