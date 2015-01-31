//
//  Builder.h
//  Builder
//
//  Created by Shengzhe Chen on 1/30/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Product : NSObject
@property (strong, nonatomic) NSMutableArray *parts;
@end

@interface AbstractBuilder : NSObject
- (void)build;
@end

@interface ConcreteBuilder : AbstractBuilder
- (Product *)product;
@end

@interface Director : NSObject
- (void)construct:(AbstractBuilder *)builder;
@end
