//
//  ConcreteFactory.h
//  AbstractFactory
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractFactory.h"

@interface ConcreteProductA1 : AbstractProductA
@end

@interface ConcreteProductA2 : AbstractProductA
@end

@interface ConcreteProductB1 : AbstractProductB
@end

@interface ConcreteProductB2 : AbstractProductB
@end

@interface ConcreteFactory1 : AbstractFactory
@end

@interface ConcreteFactory2 : AbstractFactory
@end
