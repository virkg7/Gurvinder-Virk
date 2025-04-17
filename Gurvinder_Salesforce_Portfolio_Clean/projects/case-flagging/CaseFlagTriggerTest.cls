@isTest
private class CaseFlagTriggerTest {
    @isTest
    static void testHighPriorityCase() {
        Case testCase = new Case(Status='New', Priority='High');
        insert testCase;
        System.assertEquals(true, testCase.Flagged__c);
    }
}