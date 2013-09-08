#import<Foundation/Foundation.h>
#import "tax.h"
#import "bill.h"
#import "taxCalculate.h"
#import "vat.h"
#import "kstandcst.h"

int main()
{
	NSAutoreleasePool * pool = [[NSAutoreleasePool alloc] init];
	Bill *bill = [[Bill alloc]init];
   
   float amount ;
   char str[256];
   printf("enter the type of bill: ");
   scanf("%s",str);
  
   printf("enter the amount: ");
   scanf("%f",&amount);
   
   NSString *type = [NSString stringWithUTF8String:str];
   [bill setType:type];
   [bill setAmount:amount];
   
   taxCalculate *tax =[[taxCalculate alloc]init];
   
   [tax Calculate:bill];
   
   //[type release];
   //[bill release];
   //[tax release];
	[pool release];  
   return 0;
}
   