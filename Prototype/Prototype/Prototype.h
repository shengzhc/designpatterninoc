//
//  Prototype.h
//  Prototype
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Prototype : NSObject
@property (strong, nonatomic) NSString *cloneId;
- (Prototype *)clone;
@end

@interface ConcretePrototype1 : Prototype

@end

@interface ConcretePrototype2 : Prototype

@end
