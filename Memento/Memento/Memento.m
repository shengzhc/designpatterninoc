//
//  Memento.m
//  Memento
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Memento.h"

@implementation Memento
@end

@interface Originator ()
@property (strong, nonatomic) NSString *state;
@end

@implementation Originator
- (void)setMemento:(Memento *)m
{
    self.state = m.state;
}

- (Memento *)createMemento
{
    Memento *m = [[Memento alloc] init];
    m.state = self.state;
    return m;
}

@end

@implementation CareTaker
@end