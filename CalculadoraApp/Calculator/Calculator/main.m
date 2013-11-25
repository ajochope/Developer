//
//  main.m
//  Calculator
//
//  Created by Ajo Chope on 14/07/13.
//  Copyright (c) 2013 ocalles.cam.core.objectiveC. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Calculator *deskCalc  = [[Calculator alloc] init];
        
        [deskCalc setAccumulator: 100.0];
        NSLog (@"The Accumulator is : %g", [deskCalc accumulator]);
        [deskCalc add: 200.];
        NSLog (@"Add 200.. %g", [deskCalc accumulator]);
        [deskCalc divide: 15.0];
        NSLog (@"Divide 15... %g", [deskCalc accumulator]);
        [deskCalc subtract: 10.0];
        NSLog (@"Subtract 10... %g", [deskCalc accumulator]);
        [deskCalc multiply: 5];
        NSLog (@"Multiply 5... %g", [deskCalc accumulator]);
        NSLog (@"The result is %g", [deskCalc accumulator]);
        
        
    }
    return 0;
}

