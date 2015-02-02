//
//  main.m
//  FactoryMethod
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FactoryMethod.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        ConcreteCreatorA *creatorA = [[ConcreteCreatorA alloc] init];
        printf("ConcreatorA has created ");
        printf([[creatorA createProduct].description UTF8String]);
        printf("\n");
        ConcreteCreatorB *creatorB = [[ConcreteCreatorB alloc] init];
        printf("ConcreatorB has created ");
        printf([[creatorB createProduct].description UTF8String]);
        printf("\n");
    }
    return 0;
}
