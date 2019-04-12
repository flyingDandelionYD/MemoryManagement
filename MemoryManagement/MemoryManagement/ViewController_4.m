//
//  ViewController_4.m
//  MemoryManagement
//


#import "ViewController_4.h"

@interface ViewController_4()
@property (nonatomic,strong)dispatch_source_t timer;
@end

@implementation ViewController_4
-(void)viewDidLoad{
    [super viewDidLoad];
    
    [self test1];
}

-(void)test1{
    // 队列
    dispatch_queue_t queue = dispatch_queue_create("timer", DISPATCH_QUEUE_SERIAL);
    // 创建定时器
    dispatch_source_t timer = dispatch_source_create(DISPATCH_SOURCE_TYPE_TIMER, 0, 0, queue);
    // 设置时间
    uint64_t start = 2.0; // 2秒后开始执行
    uint64_t interval = 1.0; // 每隔1秒执行
    dispatch_source_set_timer(timer,
                              dispatch_time(DISPATCH_TIME_NOW, start * NSEC_PER_SEC),interval * NSEC_PER_SEC, 0);
    // 设置回调
    dispatch_source_set_event_handler(timer, ^{
        NSLog(@"1111");
    });
    
//    OR: dispatch_source_set_event_handler_f(timer, timerFire);
    
    // 启动定时器
    dispatch_resume(timer);
    self.timer = timer; //得使用强引用引用下
}

void timerFire(void *param){
    NSLog(@"2222 - %@", [NSThread currentThread]);
}

- (void)dealloc{
    NSLog(@"%s", __func__);
}
@end
