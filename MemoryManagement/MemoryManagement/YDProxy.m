//
//  YDProxy.m
//  MemoryManagement
//


#import "YDProxy.h"

@implementation YDProxy
+ (instancetype)proxyWithTarget:(id)target{
    YDProxy *proxy = [[YDProxy alloc] init];
    proxy.target = target;
    return proxy;
}

- (id)forwardingTargetForSelector:(SEL)aSelector{
    return self.target;
}

-(void)dealloc{
    NSLog(@"%s", __func__);
}
@end
