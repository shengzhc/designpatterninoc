//
//  FactoryMethod.h
//  FactoryMethod
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractProduct : NSObject
@end

@interface ConcreteProductA : AbstractProduct
@end

@interface ConcreteProductB : AbstractProduct
@end

@interface AbstractCreator : NSObject
- (AbstractProduct *)createProduct;
@end

@interface ConcreteCreatorA : AbstractCreator
@end

@interface ConcreteCreatorB : AbstractCreator
@end

@interface FactoryMethod : NSObject
@end
