//
//  main.m
//  Builder
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Builder.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Director *d = [[Director alloc] init];
        ConcreteBuilder *b = [[ConcreteBuilder alloc] init];
        printf("Building parts...\n");
        [d construct:b];
        printf([b.product.description UTF8String]);
        printf("Finishing building Parts...\n");
    }
    return 0;
}
