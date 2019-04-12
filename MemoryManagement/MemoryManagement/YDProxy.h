//
//  YDProxy.h
//  MemoryManagement
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YDProxy : NSObject
+ (instancetype)proxyWithTarget:(id)target;
@property (weak, nonatomic) id target;
@end

NS_ASSUME_NONNULL_END
