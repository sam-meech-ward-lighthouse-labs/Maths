//
//  QuestionFactory.m
//  Maths
//
//  Created by Alex Lee on 2017-05-31.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import "QuestionFactory.h"

#import "AdditionQuestion.h"
#import "SubtractionQuestion.h"
#import "MultiplicationQuestion.h"
#import "DivisionQuestion.h"

typedef NS_ENUM(NSUInteger, QuestionType) {
    QuestionTypeAddition = 0,
    QuestionTypeSubtraction,
    QuestionTypeMultiplication,
    QuestionTypeDivision,
};
static const int kTotalQuestionTypes = 4;

@implementation QuestionFactory

- (Question *)generateRandomQuestion;
{
    // There are 4 QuestionTypes in the QuestionType enum, and they start at 0 so we can use this number to represent an entry in the enum
    QuestionType type = arc4random_uniform(kTotalQuestionTypes);
    
    return [self question:type];
}

- (Question *)question:(QuestionType)type {
    switch (type) {
        case QuestionTypeAddition:
            return [[AdditionQuestion alloc] init];
        case QuestionTypeSubtraction:
            return [[SubtractionQuestion alloc] init];
        case QuestionTypeMultiplication:
            return [[MultiplicationQuestion alloc] init];
        case QuestionTypeDivision:
            return [[DivisionQuestion alloc] init];
    }
}

@end
