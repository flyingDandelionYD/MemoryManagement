//
//  main.m
//  2.AutoreleasePoolPage的结构
//


#import <Foundation/Foundation.h>
#import "myPerson2.h"

//因为是C函数，在Foundation框架里面不开源，但是可以使用extern来使用，作用：可以查看releasepool内存情况
extern void _objc_autoreleasePoolPrint(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        myPerson2 *p1 = [[[myPerson2 alloc] init] autorelease];
        myPerson2 *p2 = [[[myPerson2 alloc] init] autorelease];
        @autoreleasepool { // r2 = push()
            for (int i = 0; i < 600; i++) {
                myPerson2 *p3 = [[[myPerson2 alloc] init] autorelease];
            }
            @autoreleasepool { // r3 = push()
                myPerson2 *p4 = [[[myPerson2 alloc] init] autorelease];
                _objc_autoreleasePoolPrint();
            } // pop(r3)
        } // pop(r2)
    }// pop(r1)
    return 0;
}
