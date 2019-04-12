//
//  ViewController_3.m
//  MemoryManagement
//


#import "ViewController_3.h"
#import "YDProxy2.h"

@interface ViewController_3()
@property (strong, nonatomic) NSTimer *timer;
@end

@implementation ViewController_3
-(void)viewDidLoad{
    [super viewDidLoad];
    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:[YDProxy2 proxyWithTarget:self] selector:@selector(timerTest) userInfo:nil repeats:YES];
    
     //分析：
    //继承了NSProxy ，那么大部分就会进入消息转发阶段。
    //在调用 isKindOfClass 的时候，进入了消息转发。进入到 methodSignatureForSelector 和 forwardInvocation 这两个方法。
    //调用顺序就改成了 target 。也就是说先拿到[YDProxy2 proxyWithtarget: vc] 中的 vc
    //然后变成了[vc isKindOfClass:[ViewController class]]；
    NSLog(@"%d",[[YDProxy2 proxyWithTarget:self] isKindOfClass:[ViewController_3 class]]);
}

- (void)timerTest{
    NSLog(@"%s", __func__);
}

- (void)dealloc{
    NSLog(@"%s", __func__);
    [self.timer invalidate];
}
@end
