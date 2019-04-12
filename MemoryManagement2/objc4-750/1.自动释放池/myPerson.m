//
//  myPerson.m
//  1.自动释放池
//


#import "myPerson.h"

@implementation myPerson
-(void)dealloc{
    NSLog(@"%s",__FUNCTION__);
}
@end
