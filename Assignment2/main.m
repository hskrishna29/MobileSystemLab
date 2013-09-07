#import <Foundation/Foundation.h>

int main(int argc, char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
	NSDictionary * dictionary = [[NSDictionary alloc] initWithObjectsAndKeys:
	[NSNumber numberWithInteger:10],@"Centimeter",[NSNumber numberWithInteger:40],@"Pound",[NSNumber numberWithInteger:50],@"Ounce"
	,[NSNumber numberWithInteger:10],@"Kilogram",[NSNumber numberWithInteger:30],@"Yard",[NSNumber numberWithInteger:10],@"Millimeter",
	[NSNumber numberWithInteger:10],@"Kilometer",[NSNumber numberWithInteger:120],@"Milligram",
	[NSNumber numberWithInteger:20],@"Gram",
	[NSNumber numberWithInteger:10],@"Meter",nil];
	
	for(id key in dictionary) //fast enumeration
	{
		NSString * string = key;
		string = [string lowercaseString]; //method to convert characters to lowercase.
		if([string hasSuffix:@"meter"]) //check for suffix meter in string.
			NSLog(@"%@ - %@",key, [dictionary valueForKey:key]); // display key and value for that key.
		else
			continue;
	}
	[dictionary release];
	[pool release];
	return 0;

}