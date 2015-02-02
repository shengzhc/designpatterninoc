//
//  Facade.h
//  Facade
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SubSystemA : NSObject
- (void)methodA;
@end

@interface SubSystemB : NSObject
- (void)methodB;
@end

@interface SubSystemC : NSObject
- (void)methodC;
@end

@interface SubSystemD : NSObject
- (void)methodD;
@end

@interface Facade : NSObject
- (void)methodOne;
- (void)methodTwo;
@end
