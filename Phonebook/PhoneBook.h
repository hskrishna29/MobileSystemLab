#import<Foundation/Foundation.h>

@interface PhoneBook: NSObject
{
	NSMutableArray *arr;
}




-(void)initial;

-(void)addEntry:(id)obj;

-(void)delEntry:(id)obj;

-(void)listAll;

-(int)countAll;

-(void)searchWithName:(NSString *)nm;

@end	
