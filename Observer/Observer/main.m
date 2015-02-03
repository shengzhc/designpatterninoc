//
//  main.m
//  Observer
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Observer.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        ConcreteSubject *s = [[ConcreteSubject alloc] init];
        [s attach:[[ConcreteObserver alloc] initWithSubject:s name:@"O1"]];
        [s attach:[[ConcreteObserver alloc] initWithSubject:s name:@"O2"]];
        [s attach:[[ConcreteObserver alloc] initWithSubject:s name:@"O3"]];
        s.state = @"XYZ";
        [s notify];
    }
    return 0;
}
