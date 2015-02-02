//
//  main.m
//  Proxy
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Proxy.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        Proxy *proxy = [[Proxy alloc] init];
        [proxy request];
    }
    return 0;
}
