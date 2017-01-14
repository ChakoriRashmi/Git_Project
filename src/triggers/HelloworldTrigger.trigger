trigger HelloworldTrigger on Account (before insert) {  
        Account a = new Account();
        a.Description = 'New description';
    }