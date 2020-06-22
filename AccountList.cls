public class AccountList {
    //first comment of Bala Narendra for jenkins
    @AuraEnabled
    public static List<Account> queryAccountList(string accountName){
        string name= '%'+accountName+'%';
        List<Account> acclist = [select id,name,AccountNumber,Account_Opportunity_Number__c,BillingAddress from Account where name like :name];
        return acclist;
    }
}
