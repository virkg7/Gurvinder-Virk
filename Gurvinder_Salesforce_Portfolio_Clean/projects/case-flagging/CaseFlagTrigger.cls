trigger CaseFlagTrigger on Case (before insert, before update) {
    for (Case c : Trigger.new) {
        if (c.Status == 'New' && c.Priority == 'High') {
            c.Flagged__c = true;
        }
    }
}