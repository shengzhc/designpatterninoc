//
//  main.m
//  Decorator
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Decorator.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        ConcreteComponent *com = [[ConcreteComponent alloc] init];
        ConcreteDecoratorA *da = [[ConcreteDecoratorA alloc] init];
        da.component = com;
        ConcreteDecoratorB *db = [[ConcreteDecoratorB alloc] init];
        db.component = da;
        
        [da operate];
        printf("\n\n\n");
        [db operate];
    }
    return 0;
}
