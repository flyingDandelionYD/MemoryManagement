//
//  ViewController_1.m
//  MemoryManagement
//


#import "ViewController_1.h"
#import <os/lock.h>

@interface ViewController_1 ()
@property (nonatomic,strong)NSString  *name;
@property (assign, nonatomic) os_unfair_lock lock;
@end

@implementation ViewController_1

-(void)setName:(NSString *)name{
    if(_name != name){
        [_name  release];
        _name = [name retain];
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.lock  = OS_UNFAIR_LOCK_INIT;
    [self test1];
}

-(void)test1{
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    for(int i=0;i<1000;i++){
        dispatch_async(queue, ^{
             os_unfair_lock_lock(&_lock);
            self.name = [NSString stringWithFormat:@"abcdefghijk"];
             os_unfair_lock_unlock(&_lock);
        });
    }
}

-(void)test2{
    dispatch_queue_t queue = dispatch_get_global_queue(0, 0);
    for(int i=0;i<1000;i++){
        dispatch_async(queue, ^{
             self.name = [NSString stringWithFormat:@"abc"];
        });
    }
}

@end
