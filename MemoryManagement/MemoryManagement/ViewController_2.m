//
//  ViewController_2.m
//  MemoryManagement
//


#import "ViewController_2.h"
#import "YDProxy.h"

@interface ViewController_2 ()
@property (nonatomic,strong)NSTimer  *timer;
@property (nonatomic,strong)CADisplayLink  *link;
@end

@implementation ViewController_2

- (void)viewDidLoad {
    [super viewDidLoad];
    
//     //方法一
//     __weak typeof(self) weakSelf = self;
//     self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 repeats:YES block:^(NSTimer * _Nonnull timer) {
//     [weakSelf timerTest];
//     }];
    
    
//    //方法二
//    self.timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:[YDProxy proxyWithTarget:self] selector:@selector(timerTest) userInfo:nil repeats:YES];
    
    //保证调用频率和屏幕的刷帧频率一致，60FPS
    self.link = [CADisplayLink displayLinkWithTarget:[YDProxy proxyWithTarget:self] selector:@selector(linkTest)];
    [self.link addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];
    
}

-(void)linkTest{
     NSLog(@"%s",__FUNCTION__);
}

-(void)timerTest{
    NSLog(@"%s",__FUNCTION__);
}

-(void)dealloc{
    NSLog(@"%s", __func__);
    [self.timer invalidate];
    
    [self.link invalidate];
}

@end
