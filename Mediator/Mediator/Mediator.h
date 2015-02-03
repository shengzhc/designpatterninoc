//
//  Mediator.h
//  Mediator
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Colleague : NSObject
@end

@interface Mediator : NSObject
@end


@class ConcreteColleague;
@interface ConcreteMediator : Mediator
@property (strong, nonatomic) ConcreteColleague *colleagueA;
@property (strong, nonatomic) ConcreteColleague *colleagueB;
- (void)send:(NSString *)message colleague:(ConcreteColleague *)colleague;
@end

@interface ConcreteColleague : Colleague
@property (weak, nonatomic) ConcreteMediator *mediator;
- (void)send:(NSString *)message;
- (void)notify:(NSString *)message;
@end
