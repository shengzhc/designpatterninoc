//
//  Observer.h
//  Observer
//
//  Created by Shengzhe Chen on 2/3/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Observer;
@interface Subject : NSObject
- (void)attach:(Observer *)o;
- (void)detach:(Observer *)o;
- (void)notify;
@end

@interface ConcreteSubject : Subject
@property (strong, nonatomic) NSString *state;
@end

@interface Observer : NSObject
- (void)update;
@end

@interface ConcreteObserver : Observer
@property (weak, nonatomic) ConcreteSubject *subject;
@property (strong, nonatomic) NSString *name;
- (instancetype)initWithSubject:(ConcreteSubject *)subject name:(NSString *)name;
@end
