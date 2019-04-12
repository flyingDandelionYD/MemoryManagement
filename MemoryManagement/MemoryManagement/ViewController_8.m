//
//  ViewController_8.m
//  MemoryManagement
//


#import "ViewController_8.h"

@interface ViewController_8 ()

@end

@implementation ViewController_8

- (void)viewDidLoad {
    [super viewDidLoad];
    /*
    NSString *str1 = [NSString stringWithFormat:@"test"];
    NSLog(@"%p -- %@",str1,[str1 class]);//0xf7f20831888a5de3 -- NSTaggedPointerString
    
    NSString *str2 = [str1 copy];
    NSLog(@"%p -- %@",str2,[str2 class]);//0xf7f20831888a5de3 -- NSTaggedPointerString
    
    NSMutableString *str3 = [str1 mutableCopy];
    NSLog(@"%p -- %@",str3,[str3 class]);//0x600002a13480 -- __NSCFString
    
    [str3 release];
    [str2 release];
    [str1 release];
     */
    
    NSMutableString *str1 = [[NSMutableString alloc]initWithString:@"test"];
    NSLog(@"%p -- %@",str1,[str1 class]);//0x600002d16dc0 -- __NSCFString
    
    NSString *str2 = [str1 copy];
    NSLog(@"%p -- %@",str2,[str2 class]);//0xef964e52ba42afec -- NSTaggedPointerString
    
    NSString *str3 = [str2 mutableCopy];
    NSLog(@"%p -- %@",str3,[str3 class]);//0x600002d16cd0 -- __NSCFString
    
    [str3 release];
    [str2 release];
    [str1 release];
    
}


@end
