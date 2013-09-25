#import "Phone.h"

@implementation Phone

@synthesize name, email, num;

-(id)initWithName:(NSString*)newname
						nEmail:(NSString*)newemail
						nId:(int)newnum
{
	self = [super init];
	if(self)
	{
		[self setName:newname];
		[self setEmail:newemail];
		[self setNum:newnum];
	}
	return self;
}

-(void)print
{
	NSLog(@"\nName: %@\nEmail: %@\nPhone Number: %d\n\n", name, email, num);
}

@end