#import<Foundation/Foundation.h>
#import"tax.h"
#import"bill.h"

@interface taxCalculate:NSObject
-(void)Calculate:(Bill*) bill;
@end