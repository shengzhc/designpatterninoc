//
//  Iterator.h
//  Iterator
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Iterator : NSObject
- (id)first;
- (void)next;
- (BOOL)isDone;
- (id)currentItem;
@end

@interface Aggregate : NSObject
- (Iterator *)createIterator;
@end

@interface ConcreteIterator : Iterator
@end

@interface ConcreteAggregate : Aggregate
@property (strong, nonatomic) NSMutableArray *list;
@end
