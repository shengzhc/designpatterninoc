//
//  main.m
//  Adapter
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Adapter.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Target *t = [[Adapter alloc] init];
        [t request];
    }
    return 0;
}
