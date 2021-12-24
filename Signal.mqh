
#include <Volume by Price Indicator\\Data Environment.mqh>

CEnvironment Environment1;

#define eq 0
#define lt -1
#define gt 1

bool Condition() 
  {

      const double bid = SymbolInfoDouble(Symbol(),SYMBOL_BID);
          
      //input_api_env_name=default
      Environment1.NameSet("VBP");
      
      ////input_api_env_name=indicator1?filter=TIME,VP_VA
      //Environment1.NameSet("VBP_INDICATOR1");         
      
      if (Environment1.Condition(bid,lt,VBP_ENV_VP_VA_HIGH)) {
      
         //Alert(); //Print(); //SendMail(); //SendNotification(); //SendFTP(); //PlaySound(); //WebRequest(); 
         
         return true;
      
      }
         
      return false;
     
  }
//+------------------------------------------------------------------+



