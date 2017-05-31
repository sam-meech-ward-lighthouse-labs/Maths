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
    NSTimeInterval temp;
    for (Question *question in _questions) {
        temp += [question answerTime];
    }
    NSTimeInterval avg = temp / [_questions count];
    NSString *timeStats = [NSString stringWithFormat:@"total time: %.0lfs, average time: %.0lfs",temp,avg];
    return timeStats;
}

@end
