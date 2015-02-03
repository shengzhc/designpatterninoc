//
//  State.h
//  State
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class State;
@interface Context : NSObject
@property (strong, nonatomic) State *state;
- (void)request;
@end

@interface State : NSObject
- (void)handle:(Context *)context;
@end

@interface ConcreteStateA : State

@end

@interface ConcreteStateB : State

@end
