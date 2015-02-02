//
//  ChainOfResponsibility.h
//  ChainofResponsibility
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Handler : NSObject
@property (strong, nonatomic) Handler *successor;
- (void)handleRequest:(NSInteger)request;
@end

@interface ConcreteHandlerA : Handler
@end

@interface ConcreteHandlerB : Handler
@end

@interface ConcreteHandlerC : Handler
@end
