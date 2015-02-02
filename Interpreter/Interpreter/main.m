//
//  main.m
//  Interpreter
//
//  Created by Shengzhe Chen on 2/2/15.
//  Copyright (c) 2015 Shengzhe Chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Interpreter.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {

        Context *context = [[Context alloc] init];
        NSArray *expressions = @[[TerminalExpression new], [NonterminalExpression new]];
        for (AbstractExpression *expression in expressions) {
            [expression interpret:context];
        }
    }
    return 0;
}
