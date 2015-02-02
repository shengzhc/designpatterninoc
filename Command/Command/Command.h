//
//  Command.h
//  Command
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Receiver : NSObject
- (void)action;
@end

@interface Command : NSObject
@property (strong, nonatomic) Receiver *receiver;
- (void)execute;
@end

@interface ConcreteCommand : Command
@end

@interface Invoker : NSObject
- (void)executeCommand:(Command *)command;
@end

