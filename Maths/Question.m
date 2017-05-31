//
//  Question.m
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "Question.h"
@implementation Question

- (instancetype) init {
    if (self == [super init]) {
        //create numbers between 0 - 90, and add 10, meaning we will always get a number between 10 and 100
        _leftValue = arc4random_uniform(91) + 10;
        _rightValue = arc4random_uniform(91) + 10;
        //mark the start of the 'timer'
        _startTime = [NSDate date];
    }
    
    return self;
}

- (void)generateQuestion;
{
    //each question subclass will have its own generateQuestion method, so the parent's is left blank
}

- (void)printQuestion;
{
    NSLog(@"%@",_question);
}

- (BOOL)checkAnswer:(NSInteger)userAns;
{
    //mark the end of the 'timer' and check for correctness
    _endTime = [NSDate date];
    return (userAns == _answer);
}

- (NSTimeInterval)answerTime;
{
    //find the time (seconds) taken for the user to respond to the question
    NSTimeInterval timeTaken = [_endTime timeIntervalSinceDate:_startTime];
    return timeTaken;
}

@end
