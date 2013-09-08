#import<Foundation/Foundation.h>
#import "bill.h"
#import "tax.h"
@implementation Tax
-(void)printTax
{
   NSLog(@"Tax amount : %.2f",totalTax);
   NSLog(@"Bill amount : %.2f",totalAmount);
}
-(void)CalculateTax:(Bill*) bill
{
   printf("over");
}
@end
