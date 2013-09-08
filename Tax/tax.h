#import<Foundation/Foundation.h>
#import "bill.h"
@interface Tax:NSObject
{
 float taxamount;
 float billamount;
}
-(void)printTax;
-(void)CalculateTax:(Bill*) bill;
@end
