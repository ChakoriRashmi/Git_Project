trigger accIndustry on Account (before insert) {
    for(Account acc: Trigger.New)
        if(acc.Industry=='Education'){
            
            acc.addError('We do not work with this Indusrty anymore');
        }
        
    

}