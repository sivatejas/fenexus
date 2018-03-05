/****************************************************************************************
*
* @Name         Main SBQQ_QuoteLine Trigger Handler
* @Author       Michael Mock
* @Date         June 2nd, 2017
* @Description  Extends Trigger Handler and calls main business logic classes/methods
*
* @revision(s) : 
*
********************************************************************************************/
//Testing CI Deploy
public class SBQQ_QuoteLineTriggerHandler extends TriggerHandler{

    private Boolean isDisabled = false;
    
    /****************************************************************************************
    *
    * @Author       Sivateja Surabathini
    * @Date         September 9th, 2016
    * @Description  Constructor, contains logic to turn on/off
    * @params       n/a
    * @return       n/a
    *
    * ******************************************************************************************/
    public SBQQ_QuoteLineTriggerHandler(){
         ShGl_DisableBusinessLogic__c disabled = ShGl_DisableBusinessLogic__c.getInstance();
         isDisabled = disabled.ShGl_Disable_SB_Quote__c;
    }
    
    /****************************************************************************************
    *
    * @Author       Sivateja Surabathini
    * @Date         September 9th, 2016
    * @Description  beforeInsert method - fires unless disabled
    * @params       n/a
    * @return       n/a
    *
    * ******************************************************************************************/
    public override void beforeInsert() {
        if(!isDisabled){
            try{
                
             }
             catch(Exception ex){
                 Logger.log(Logger.DEBUG, 'SBQQ_QuoteLineTriggerHandler', 'Message:' + ex.getMessage() + ' StackTrace:' + ex.getStackTraceString(), null);
                 //throw ex;
             }
        }
    }
    
    /****************************************************************************************
    *
    * @Author       Sivateja Surabathini
    * @Date         September 9th, 2016
    * @Description  beforeUpdate method - fires unless disabled
    * @params       n/a
    * @return       n/a
    *
    * ******************************************************************************************/
    public override void beforeUpdate() {
        if(!isDisabled){
            try{
                
            }
            catch(Exception ex){
                Logger.log(Logger.DEBUG, 'SBQQ_QuoteLineTriggerHandler', 'Message:' + ex.getMessage() + ' StackTrace:' + ex.getStackTraceString(), null);
                //throw ex;
            }    
        }
    }
    
    /****************************************************************************************
    *
    * @Author       Sivateja Surabathini
    * @Date         September 9th, 2016
    * @Description  afterInsert method - fires unless disabled
    * @params       n/a
    * @return       n/a
    *
    * ******************************************************************************************/
    public override void afterInsert() {
        if(!isDisabled){
            CloneQLSN.cloneQLSNs((List<SBQQ__QuoteLine__c>)Trigger.New);
        }
    }
    
    /****************************************************************************************
    *
    * @Author       Sivateja Surabathini
    * @Date         September 9th, 2016
    * @Description  afterUpdate method - fires unless disabled
    * @params       n/a
    * @return       n/a
    *
    * ******************************************************************************************/
    public override void afterUpdate() {
        if(!isDisabled){
            
        }
    }
}
