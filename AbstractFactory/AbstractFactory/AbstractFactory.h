//
//  AbstractFactory.h
//  AbstractFactory
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#ifndef AbstractFactory_AbstractFactory_h
#define AbstractFactory_AbstractFactory_h

#import <Foundation/Foundation.h>

@interface AbstractProductA : NSObject
@end

@interface AbstractProductB : NSObject
@end

@interface AbstractFactory : NSObject
- (AbstractProductA *)createProductA;
- (AbstractProductB *)createProductB;
- (void)run;
@end

#endif
