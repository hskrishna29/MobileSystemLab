#import "tax.h"
#import "bill.h"
#import "kstandcst.h"

@implementation KSTandCST
-(void)CalculateTax:(Bill*) bill
{
   float kstrate=0.14;
	float cstrate=0.04;
	
	float amt=[bill amount];
	billamount=amt+amt*kstrate;
	taxamount=amt*kstrate;
	amt=billamount;
	billamount=amt+amt*cstrate;
	taxamount=amt*cstrate;
}
@end
