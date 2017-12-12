trigger TriggerOnA on A__c (after delete, after insert, after undelete, after update, before delete, before insert, before update) {
	if(trigger.isAfter && trigger.isDelete) {
		System.debug('---- After delete old -------');
		System.debug(Trigger.old);
		System.debug('---- After delete old Map -------');
    	System.debug(Trigger.oldMap);
	}	
	else if(trigger.isAfter  && trigger.isUndelete) {
		System.debug('-----After Undelete Old------');
    	System.debug(Trigger.old);
		System.debug('-----After Undelete Old Map-----');
    	System.debug(Trigger.oldMap);
	}
	else if(trigger.isBefore && trigger.isDelete) {
		System.debug('---------Before Delete Old-------');
    	System.debug(Trigger.old);
	}
	else if(trigger.isBefore && trigger.isInsert) {
		System.debug(Trigger.new);
	}
	else if(trigger.isafter && trigger.isInsert) {
		System.debug(Trigger.newMap);		
	}
	else if(trigger.isBefore && trigger.isUpdate) {
		System.debug(Trigger.newMap);		
	}
	else if(trigger.isAfter && trigger.isUpdate) {
		System.debug(Trigger.oldMap); 
	}	 
}