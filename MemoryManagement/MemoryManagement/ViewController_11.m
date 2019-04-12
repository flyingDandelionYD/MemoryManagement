//
//  ViewController_11.m
//  MemoryManagement
//


#import "ViewController_11.h"

@interface ViewController_11 ()

@end

@implementation ViewController_11

- (void)viewDidLoad {
    [super viewDidLoad];
    NSObject *obj = [[[NSObject alloc]init] autorelease];
    NSLog(@"%@",[NSRunLoop mainRunLoop]);
}

@end
