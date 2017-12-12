@isTest
public class TestToCheckClone {
     static testMethod void checkCloneRercord()	{
     	Account accounts = new Account(Name = 'Test Name');
  		system.Test.startTest();
  		insert accounts;
  		system.Test.stopTest();
     }
}