#import<Foundation/Foundation.h>
@interface emp:NSObject          //interface file
{
 NSString* name;
 NSString* dept;
 int eid;
 
}
//@property (assign) NSString* name;  --> generates set methods automatically, the user doesnt need to define them.
//@property (assign) NSString* dept;
//@property int eid;

//set and get declarations.

-(void) setName: (NSString*)n;
-(void) setDept: (NSString*)d;
-(void) setEid: (int) i;
-(NSString*) getName;
-(NSString*) getDept;
-(int) getEid;

@end
