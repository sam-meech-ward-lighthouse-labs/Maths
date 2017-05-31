//
//  QuestionManager.m
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "QuestionManager.h"

@implementation QuestionManager

- (instancetype)init {
    if (self == [super init]) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)addQuestion:(Question *)question;
{
    [_questions addObject:question];
}

- (NSString *)timeOutput;
{
    NSTimeInterval totalTime;
    //find the time taken to answer all questions thus far
    for (Question *question in _questions) {
        totalTime += [question answerTime];
    }
    //calculate the average time per question, then print both for the user to see
    NSTimeInterval avg = totalTime / [_questions count];
    NSString *timeStats = [NSString stringWithFormat:@"total time: %.0lfs, average time: %.0lfs",totalTime,avg];
    return timeStats;
}

@end
