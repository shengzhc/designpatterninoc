//
//  main.m
//  AbstractFactory
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConcreteFactory.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        ConcreteFactory1 *f1 = [[ConcreteFactory1 alloc] init];
        ConcreteFactory2 *f2 = [[ConcreteFactory2 alloc] init];
        [f1 run];
        [f2 run];
    }

    return 0;
}
