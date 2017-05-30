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
        NSInteger firstNum = arc4random_uniform(91) + 10;
        int printerOne = (int) firstNum;
        NSInteger secondNum = arc4random_uniform(91) + 10;
        int printerTwo = (int) secondNum;
        _answer = firstNum + secondNum;
        _question = [NSString stringWithFormat:@"%d + %d ?",printerOne,printerTwo];
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
