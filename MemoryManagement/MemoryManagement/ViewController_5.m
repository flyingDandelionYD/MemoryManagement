
//
//  ViewController_5.m
//  MemoryManagement
//


#import "ViewController_5.h"
#import "YDTimer.h"

@interface ViewController_5()
@property (copy, nonatomic) NSString *task;
@end

@implementation ViewController_5
- (void)viewDidLoad {
    [super viewDidLoad];
    // 接口设计
    self.task = [YDTimer execTask:self
                         selector:@selector(doTask)
                            start:2.0
                         interval:1.0
                          repeats:YES
                            async:NO];
}

- (void)doTask{
    NSLog(@"doTask - %@", [NSThread currentThread]);
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    [YDTimer cancelTask:self.task];
}

- (void)dealloc{
    NSLog(@"%s", __func__);
    [YDTimer cancelTask:self.task];
}
@end
