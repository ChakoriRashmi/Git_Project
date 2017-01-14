trigger for_ayushi on Account (before insert) 
{
    for(Account acc:trigger.new)
    {
   
    acc.Description='added DESC';
        
     }

}