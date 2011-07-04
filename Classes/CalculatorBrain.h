//
//  CalculatorBrain.h
//  Calculator
//
//  Created by daye on 11-6-9.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CalculatorBrain : NSObject {
	double operand;
	NSString *waitingOperation;
	double waitingOperand;
}

- (void)setOperand:(double)aDouble;
- (double)performOperation:(NSString *)operation;

@end
