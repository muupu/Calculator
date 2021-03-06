//
//  CalculatorBrain.m
//  Calculator
//
//  Created by daye on 11-6-9.
//  Copyright 2011 __MyCompanyName__. All rights reserved.
//

#import "CalculatorBrain.h"


@implementation CalculatorBrain

- (void)setOperand:(double)aDouble
{
	operand = aDouble;
}

- (void)performWaitingOperation
{
	if ([@"+" isEqual:waitingOperation]) {
		operand = waitingOperation + operand;
	}
	else if([@"*" isEqual:waitingOperation])
	{
		operand = waitingOperand * operand;
	}
	else if([@"-" isEqual:waitingOperation])
	{
		operand = waitingOperation - operand;
	}
	else if ([@"/" isEqual:waitingOperation])
	{
		if (operand) {
			operand = waitingoperand / operand;
		}
	}


- (double)performOperaton:(NSString *)operation
{
	if ([operation isEqual:@"sqrt"]) {
		operand = sqrt(operand);
	}
	else if ([@"+/-" isEqual:operation])
	{
		operand = - operand;
	}
	else {
		[self performWaitingOperation];
		waitingOperation = operation;
		waitingoperand = operand;
	}

	return operand;
}

@end
