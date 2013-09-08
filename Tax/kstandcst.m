#import "tax.h"
#import "bill.h"
#import "kstandcst.h"

@implementation KSTandCST
-(void)CalculateTax:(Bill*) bill
{
   float kstrate=0.14;
	float cstrate=0.04;
	
   float amt=[bill amount];
   totalAmount=amt+amt*kstrate;
	totalTax=amt*kstrate;
	amt=totalAmount;
	totalAmount=amt+amt*cstrate;
	totalTax=amt*cstrate;
}
@end
