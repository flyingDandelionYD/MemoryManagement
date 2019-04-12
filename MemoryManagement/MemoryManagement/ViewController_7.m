//
//  ViewController_7.m
//  MemoryManagement
//


#import "ViewController_7.h"
#import <objc/runtime.h>

@implementation ViewController_7
-(void)viewDidLoad{
    [super viewDidLoad];
    
    NSNumber *a = @(1);
    NSLog(@"%p",a);
    
    NSNumber *b  = @(2);
    NSLog(@"%p",b);
    
    NSNumber *c = @(3.1415926);
    NSLog(@"%p",c);
    
    NSLog(@"=======Start======");
    for(int i=0;i<10;i++){
        NSNumber *d  = @((int)(arc4random() % 520));
        NSLog(@"%p--a=%@",d,d);
    }
    NSLog(@"=======End======");
    
    
    NSString *str = @"abc"; // __NSCFConstantString（常量字符串)
    NSLog(@"%p -- %@",str,[str class]);
    
    NSString *str1 = [NSString stringWithFormat:@"%@",str]; // NSTaggedPointerString
    NSLog(@"%p -- %@",str1,[str1 class]);
    
    NSString *str2 = [str copy]; // __NSCFConstantString（常量字符串)
    NSLog(@"%p -- %@",str2,[str2 class]);

    NSMutableString *str3 = [str mutableCopy]; // __NSCFString（字符串)
    NSLog(@"%p -- %@",str3,[str3 class]);

}
@end
