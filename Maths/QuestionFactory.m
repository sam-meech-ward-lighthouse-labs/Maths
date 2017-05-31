//
//  QuestionFactory.m
//  Maths
//
//  Created by Alex Lee on 2017-05-31.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init {
    if (self == [super init]) {
        _questionSubclassNames = @[@"AdditionQuestion",@"SubtractionQuestion",@"MultiplicationQuestion",@"DivisionQuestion"];
    }
    return self;
}

- (Question *)generateRandomQuestion;
{
    NSInteger index = arc4random_uniform(4);
    NSString *subclass = [_questionSubclassNames objectAtIndex:index];
    
    return ([[NSClassFromString(subclass) alloc] init]);
}

@end
