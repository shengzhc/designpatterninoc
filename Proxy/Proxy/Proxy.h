//
//  Proxy.h
//  Proxy
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Subject : NSObject
- (void)request;
@end

@interface RealSubject : Subject

@end

@interface Proxy : Subject
@property (strong, nonatomic) Subject *subject;
@end
