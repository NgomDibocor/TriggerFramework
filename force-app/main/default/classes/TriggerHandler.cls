
/*
* @description : Toutes les Triggerhandlers vont étendre cette classe et redéfinir seulement les méthodes dont ils ont besoin
*/
public virtual class TriggerHandler {
    
    public static boolean bypassTrigger = false;

    public virtual boolean isDisabled(){
        Boolean runTrigger = true;
        if(System.isFuture() || System.isBatch() || bypassTrigger){
            runTrigger = false;
        }
        return runTrigger;
    }
    
    protected virtual void beforeInsert(List<SObject> newItems){}
    
    protected virtual void afterInsert(Map<Id, SObject> newMapItems){}
    
    protected virtual void beforeUpdate(Map<Id, SObject> oldMapItems, Map<Id, SObject> newMapItems){}
    
    protected virtual void afterUpdate(Map<Id, SObject> oldMapItems, Map<Id, SObject> newMapItems){}
    
    protected virtual void beforeDelete(Map<Id, SObject> oldMapItems){}
    
    protected virtual void afterDelete(Map<Id, SObject> oldMapItems){}
    
    protected virtual void afterUnDelete(Map<Id, SObject> newMapItems){}
}