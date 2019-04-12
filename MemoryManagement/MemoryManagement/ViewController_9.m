//
//  ViewController_9.m
//  MemoryManagement
//


#import "ViewController_9.h"
#import "YDPerson.h"

@interface ViewController_9 ()

@end

@implementation ViewController_9

- (void)viewDidLoad {
    [super viewDidLoad];
    YDPerson *p = [[YDPerson alloc]init];
    p.age = 18;
    p.height = 200.0f;
    NSLog(@"p.age = %d  p.height = %f",p.age,p.height);
    
    YDPerson *p1 = [p copy];
    NSLog(@"p1.age = %d  p1.height = %f",p1.age,p1.height);
    
}

@end
