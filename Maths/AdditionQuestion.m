//
//  AdditionQuestion.m
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "AdditionQuestion.h"
@implementation AdditionQuestion

- (instancetype) init {
    if (self == [super init]) {
        //create numbers between 0 - 90, and add 10, meaning we will always get a number between 10 and 100
        NSInteger firstNum = arc4random_uniform(91) + 10;
        NSInteger secondNum = arc4random_uniform(91) + 10;
        
        _answer = firstNum + secondNum;
        _question = [NSString stringWithFormat:@"%tu + %tu ?",firstNum,secondNum];
    }
    
    return self;
}

- (void)printQuestion;
{
    NSLog(@"%@",_question);
}

- (BOOL)checkAnswer:(NSInteger)userAns;
{
    return (userAns == _answer);
}

@end
