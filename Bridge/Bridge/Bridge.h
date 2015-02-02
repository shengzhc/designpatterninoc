//
//  Bridge.h
//  Bridge
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Implementor : NSObject
- (void)implement;
@end

@interface Abstraction : NSObject
@property (strong, nonatomic) Implementor *implementor;
- (void)operate;
@end

@interface RefineAbstraction : Abstraction
@end


@interface ConcreteImplementorA : Implementor

@end

@interface ConcreteImplementorB : Implementor
@end
