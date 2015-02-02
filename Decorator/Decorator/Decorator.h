//
//  Decorator.h
//  Decorator
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractComponent : NSObject
- (void)operate;
@end

@interface ConcreteComponent : AbstractComponent
@end

@interface Decorator : AbstractComponent
@property (strong, nonatomic) AbstractComponent *component;
@end

@interface ConcreteDecoratorA : Decorator
@end

@interface ConcreteDecoratorB : Decorator
@end
