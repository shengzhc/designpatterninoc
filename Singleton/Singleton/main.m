//
//  main.m
//  Singleton
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        Singleton *s1 = [Singleton instance];
        Singleton *s2 = [Singleton instance];
        
        if (s1 == s2) {
            printf("Objects are the same instance\n");
        } else {
            printf("Objects are different\n");
        }
    }
    return 0;
}
