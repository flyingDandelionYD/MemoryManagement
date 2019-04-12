//
//  YDTimer.h
//  MemoryManagement
//


#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface YDTimer : NSObject
+ (NSString *)execTask:(void(^)(void))task
                 start:(NSTimeInterval)start
              interval:(NSTimeInterval)interval
               repeats:(BOOL)repeats
                 async:(BOOL)async;

+ (NSString *)execTask:(id)target
              selector:(SEL)selector
                 start:(NSTimeInterval)start
              interval:(NSTimeInterval)interval
               repeats:(BOOL)repeats
                 async:(BOOL)async;

+ (void)cancelTask:(NSString *)name;
@end

NS_ASSUME_NONNULL_END
