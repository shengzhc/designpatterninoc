//
//  Template.h
//  Template
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractClass : NSObject
- (void)templateMethod;
- (void)primitiveMethod1;
- (void)primitiveMethod2;
@end

@interface ConcreteClassA : AbstractClass
@end

@interface ConcreteClassB : AbstractClass
@end
