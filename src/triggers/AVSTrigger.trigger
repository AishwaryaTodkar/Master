trigger AVSTrigger on EFT__c (after insert) {
   List<EFT__c> listOfEFT = Trigger.new;
    HandlerForEFT eftObj = new HandlerForEFT();
    eftObj.eftTrigger(listOfEFT);
}