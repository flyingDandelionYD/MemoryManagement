//
//  YDPerson.m
//  MemoryManagement
//


#import "YDPerson.h"

@implementation YDPerson
- (id)copyWithZone:(NSZone *)zone{
    YDPerson *person = [[YDPerson allocWithZone:zone] init];
    person.age = self.age;
//    person.weight = self.weight;
    person.height = 180.0f;
    return person;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"age = %d, weight = %f", self.age, self.height];
}
@end
