//
//  YDProxy2.m
//  MemoryManagement
//


#import "YDProxy2.h"

@implementation YDProxy2
+ (instancetype)proxyWithTarget:(id)target{
    // NSProxy对象不需要调用init，因为它本来就没有init方法
    YDProxy2 *proxy = [YDProxy2 alloc];
    proxy.target = target;
    return proxy;
}

- (NSMethodSignature *)methodSignatureForSelector:(SEL)sel{
    return [self.target methodSignatureForSelector:sel];
}

//重定向消息
- (void)forwardInvocation:(NSInvocation *)invocation{
    [invocation invokeWithTarget:self.target];
}

@end
