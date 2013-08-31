#import "calch.h"
@implementation calc

// define the methods declared in the header file calch.h
-(int)add:(int)n1 andArg:(int)n2
{
 return(n1+n2);
 } 
 -(int)sub:(int)n1 andArg:(int)n2
{
 return(n1-n2);
 } 
 -(int)mul:(int)n1 andArg:(int)n2
{
 return(n1*n2);
 } 
 -(int)div:(int)n1 andArg:(int)n2
{
 return(n1/n2);
 } 
 @end