//
//  Composite.h
//  Composite
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractComponent : NSObject
@property (strong, nonatomic) NSMutableArray *children;
@property (strong, nonatomic) NSString *name;
- (instancetype)initWithName:(NSString *)name;
- (void)display;
- (void)add:(AbstractComponent *)component;
- (void)remove:(AbstractComponent *)component;
- (AbstractComponent *)getChild:(NSUInteger)index;
@end

@interface Leaf : AbstractComponent
@end

@interface Composite : AbstractComponent
@end
