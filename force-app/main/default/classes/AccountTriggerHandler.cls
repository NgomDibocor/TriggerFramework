public with sharing class AccountTriggerHandler extends TriggerHandler{

    // To bypass trigger =>  TriggerHandler.bypassTrigger = true;

	protected override void beforeInsert(List<SObject> newItems) {
        AccountController.methodeName(newItems);
	}

	protected override void afterInsert(Map<Id, SObject> newMapItems) {
        AccountController.methodeName2(newMapItems);
	}

	protected override void beforeUpdate(Map<Id, SObject> oldMapItems, Map<Id, SObject> newMapItems) {
		AccountController.methodeName3(oldMapItems, newMapItems);
	}
}