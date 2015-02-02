//
//  Interpreter.h
//  Interpreter
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Context : NSObject
@property (strong, nonatomic) id dataContext;
@end

@interface AbstractExpression : NSObject
- (void)interpret:(Context *)context;
@end

@interface TerminalExpression : AbstractExpression
@end

@interface NonterminalExpression : AbstractExpression
@end
