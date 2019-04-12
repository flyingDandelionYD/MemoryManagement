//
//  YDProxy2.h
//  MemoryManagement
//


#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface YDProxy2 : NSProxy
+ (instancetype)proxyWithTarget:(id)target;
@property (weak, nonatomic) id target;
@end

NS_ASSUME_NONNULL_END
