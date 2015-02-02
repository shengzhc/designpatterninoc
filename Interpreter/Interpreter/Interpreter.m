//
//  Interpreter.m
//  Interpreter
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import "Interpreter.h"

@implementation Context
@end

@implementation AbstractExpression
- (void)interpret:(Context *)context
{
    [NSException raise:NSStringFromSelector(_cmd) format:nil];
}
@end

@implementation TerminalExpression
- (void)interpret:(Context *)context
{
    printf("Interpreting TerminalEpression...\n");
}
@end

@implementation NonterminalExpression
- (void)interpret:(Context *)context
{
    printf("Interpreting Non-TerminalExpression...\n");
}
@end