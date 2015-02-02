//
//  Command.m
//  Command
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Command.h"

@implementation Receiver
- (void)action
{
    printf("Receiver is taking action...\n");
}
@end

@implementation Command
- (void)execute
{
    printf("Command is executing...\n");
    [self.receiver action];
}
@end

@implementation ConcreteCommand
@end

@implementation Invoker
- (void)executeCommand:(Command *)command
{
    [command execute];
}
@end
