//
//  ViewController_10.m
//  MemoryManagement
//


#import "ViewController_10.h"
#import "MyPerson.h"

@interface ViewController_10 ()

@end

@implementation ViewController_10

- (void)viewDidLoad {
    [super viewDidLoad];
    __strong MyPerson *p1;
    __weak MyPerson *p2;
    __unsafe_unretained MyPerson *p3;
    
    NSLog(@"111");
    {
        MyPerson *person = [[MyPerson alloc]init];
//        p1 = person;
//        p2 = person;
        p3 = person;
    }
    NSLog(@"222");
    
}

@end
