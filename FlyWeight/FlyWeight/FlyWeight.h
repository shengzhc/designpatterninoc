//
//  FlyWeight.h
//  FlyWeight
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FlyWeight : NSObject
- (void)operate:(NSInteger)extrinsicState;
@end

@interface ConcreteFlyWeight : FlyWeight
@end

@interface UnsharableFlyWeight : FlyWeight

@end

@interface FlyWeightFactory : NSObject
@property (strong, nonatomic) NSMutableDictionary *flyWeights;
- (FlyWeight *)getFlyWeight:(NSString *)key;
@end


