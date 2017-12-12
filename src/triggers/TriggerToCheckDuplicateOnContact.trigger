trigger TriggerToCheckDuplicateOnContact on Contact (before insert, before update) {
   List<Contact> contacts = Trigger.new;
   HandlerForContact handler = new HandlerForContact();
   handler.checkDuplicates(contacts);  
}