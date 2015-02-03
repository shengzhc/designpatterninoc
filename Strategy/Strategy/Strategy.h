//
//  Strategy.h
//  Strategy
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Strategy : NSObject
- (void)strategyInterface;
@end

@interface ConcreteStrategyA : Strategy
@end
@interface ConcreteStrategyB : Strategy
@end
@interface ConcreteStrategyC : Strategy
@end

@interface Context : NSObject
@property (strong, nonatomic) Strategy *s;
- (void)contextInterface;
@end
