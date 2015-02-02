//
//  Adapter.h
//  Adapter
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Target : NSObject
- (void)request;
@end

@interface Adaptee : NSObject
- (void)specificRequest;
@end

@interface Adapter : Target
@end
