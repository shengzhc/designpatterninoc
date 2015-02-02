//
//  main.m
//  FlyWeight
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FlyWeight.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        FlyWeightFactory *f = [[FlyWeightFactory alloc] init];
        NSInteger extrinsicState = 22;
        FlyWeight *fx = [f getFlyWeight:@"X"];
        [fx operate:extrinsicState--];
        FlyWeight *fy = [f getFlyWeight:@"Y"];
        [fy operate:extrinsicState--];
        FlyWeight *fz = [f getFlyWeight:@"Z"];
        [fy operate:extrinsicState--];
        
        UnsharableFlyWeight *unfw = [[UnsharableFlyWeight alloc] init];
        [unfw operate:extrinsicState--];
    }
    return 0;
}
