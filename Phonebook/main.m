#import<Foundation/Foundation.h>
#import "Phone.h"
#import "PhoneBook.h"

int main(int argc, const char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	Phone *p1 = [[Phone alloc] initWithName:@"Constructor" nEmail:@"const@ructor.com" nId:1];
	Phone *p2 = [[Phone alloc] init];
	Phone *p3 = [[Phone alloc] init];
	
	PhoneBook *book = [[PhoneBook alloc]init];
	[book initial];

	
	[p2 setName:@"onlyinit1"];
	[p2 setEmail:@"abcd@e.com"];
	[p2 setNum:2];
	
	[p3 setName:@"onlyinit2"];
	[p3 setEmail:@"fghij@k.com"];
	[p3 setNum:3];
	
	//adding
	[book addEntry:p1];
	[book addEntry:p2];
	[book addEntry:p3];
	
	
	
	//remove
	//[book delEntry:p2];
	
	//list all
	[book listAll];
	
	//count
	NSLog(@"Number of Entries: %d\n", [book countAll]);
	
	//Compare
	[book searchWithName:@"Constructor"];
	
	[pool release];
	
	return 0;
}
