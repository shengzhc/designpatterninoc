//
//  main.m
//  Mediator
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mediator.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {
        
        ConcreteColleague *c1 = [[ConcreteColleague alloc] init];
        ConcreteColleague *c2 = [[ConcreteColleague alloc] init];
        ConcreteMediator *m = [[ConcreteMediator alloc] init];
        c1.mediator = m;
        c2.mediator = m;
        m.colleagueA = c1;
        m.colleagueB = c2;
        [c1 send:@"Hello are you?"];
        [c2 send:@"Fine, thank you."];
    }
    return 0;
}
