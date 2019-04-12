//
//  main.m
//  1.自动释放池
//


#import <Foundation/Foundation.h>
#import "myPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        myPerson *person = [[[myPerson alloc] init] autorelease];
        NSLog(@"%@",person);
    }
    return 0;
}

//xcrun -sdk iphoneos clang -arch arm64 -rewrite-objc main.m  -o main.cpp
