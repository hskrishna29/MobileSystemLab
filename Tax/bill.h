#import<Foundation/Foundation.h>

@interface Bill:NSObject
{
  NSString *type;
  float amount;
}
@property float amount;
@property (retain)NSString  *type;
@end