//
//  Visitor.h
//  Visitor
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ConcreteElementA;
@class ConcreteElementB;
@class ConcreteVisitorA;
@class ConcreteVisitorB;

@interface Visitor : NSObject
- (void)visitConcreteElementA:(ConcreteElementA *)e;
- (void)visitConcreteElementB:(ConcreteElementB *)e;
@end

@interface ConcreteVisitorA : Visitor
@end

@interface ConcreteVisitorB : Visitor
@end

@interface Element : NSObject
- (void)accept:(Visitor *)v;
@end

@interface ConcreteElementA : Element
- (void)operateA;
@end

@interface ConcreteElementB : Element
- (void)operateB;
@end


@interface ObjectStructure : NSObject
@property (strong, nonatomic) NSMutableArray *list;
- (void)attach:(Element *)e;
- (void)accept:(Visitor *)v;
@end
