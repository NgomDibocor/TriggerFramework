public with sharing class TriggerDispatcher {
    public static void Run(TriggerHandler handler){
        if(handler.IsDisabled()){
            return;
        }
        
        switch on Trigger.OperationType{
            when BEFORE_INSERT{
                handler.BeforeInsert(Trigger.New);
            }
            when AFTER_INSERT{
                handler.afterInsert(Trigger.NewMap);
            }
            when BEFORE_UPDATE{
                handler.beforeUpdate(Trigger.OldMap, Trigger.NewMap);
            }
            when AFTER_UPDATE{
                handler.afterUpdate(Trigger.OldMap, Trigger.NewMap);
            }
            when BEFORE_DELETE{
                handler.beforeDelete(Trigger.OldMap);
            }
            when AFTER_DELETE{
                handler.afterDelete(Trigger.OldMap);
            }
            when else{
                handler.afterUnDelete(Trigger.NewMap);
            }
        }
    }
}