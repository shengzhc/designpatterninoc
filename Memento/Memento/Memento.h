//
//  Memento.h
//  Memento
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Memento : NSObject
@property (strong, nonatomic) NSString *state;
@end

@interface Originator : NSObject
- (void)setMemento:(Memento *)m;
- (Memento *)createMemento;
@end

@interface CareTaker : NSObject
@property (strong, nonatomic) Memento *memento;
@end