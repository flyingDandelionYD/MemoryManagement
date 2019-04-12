//
//  ViewController_6.m
//  MemoryManagement
//


#import "ViewController_6.h"

static int A = 10 ;
int B;

@implementation ViewController_6
-(void)viewDidLoad{
    [super viewDidLoad];
    
    //数据段
    NSLog(@"%p",&A);
    NSLog(@"%p",&B);
    
    NSString *str = @"字符串常量";
    NSLog(@"%p",str);
    
   
    //堆
    NSObject *obj1 = [[NSObject alloc]init];
    NSObject *obj2 = [[NSObject alloc]init];
    NSLog(@"%p",obj1);
    NSLog(@"%p",obj2);
    
    //栈
    int age=10;
    float height = 180.0f;
    NSLog(@"%p",&age);
    NSLog(@"%p",&height);
    
}
@end
