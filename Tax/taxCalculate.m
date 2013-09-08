#import<Foundation/Foundation.h>
#import"tax.h"
#import"bill.h"
#import "kstandcst.h"
#import "vat.h"
#import"taxCalculate.h"
@implementation taxCalculate
-(void)Calculate:(Bill*) bill
{
   NSString *type=[[NSString alloc]init];
   type=[bill type];
  
   if([type isEqualToString:@"finished"])
   {  
      KSTandCST *kstcstamount = [[KSTandCST alloc]init];
      [kstcstamount CalculateTax:bill];
      [kstcstamount printTax];
     
   }
   else if([type isEqualToString:@"grocery"])
   {
      Vat *vatamount= [[Vat alloc]init];
      [vatamount CalculateTax:bill];
      [vatamount printTax];

   }
   [type release];
}
@end
