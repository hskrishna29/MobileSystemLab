#import<Foundation/Foundation.h>

int main(int argc, char* argv[])
{
	NSAutoreleasePool *pool = [[NSAutoreleasePool alloc]init];
	NSFileHandle *fin,*fout;
	NSData *buffer;
	fin = [NSFileHandle fileHandleForReadingAtPath:@"file.txt"];
	[[NSFileManager defaultManager]createFileAtPath:@"newfile.txt" contents:nil attributes:nil];
	
	fout = [NSFileHandle fileHandleForWritingAtPath:@"newfile.txt"];
	
	[fout truncateFileAtOffset:0];
	
	
	buffer = [fin readDataToEndOfFile];
	[fout writeData:buffer];
	if([[NSFileManager defaultManager]contentsEqualAtPath:@"file.txt" andPath:@"newfile.txt"])
		NSLog(@"The contents are equal");
	else
		NSLog(@"The contents aren't equal");
	[fin closeFile];
	[fout closeFile];
	
	[pool drain];
	return 0;
}