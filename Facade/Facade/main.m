//
//  main.m
//  Facade
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Facade.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Facade *f = [[Facade alloc] init];
        [f methodOne];
        printf("***********************************\n");
        [f methodTwo];
    }
    return 0;
}
