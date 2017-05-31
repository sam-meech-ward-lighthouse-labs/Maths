//
//  Question.h
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//
#import <Foundation/Foundation.h>
#ifndef Question_h
#define Question_h

@interface Question : NSObject

/// @name PROPERTIES

/// The math question that will be printed to the console.
@property (nonatomic, strong)NSString *question;

@property (nonatomic)NSInteger answer;

@property (nonatomic, strong)NSDate *startTime;

@property (nonatomic, strong)NSDate *endTime;

@property (nonatomic)NSInteger rightValue;

@property (nonatomic)NSInteger leftValue;

/// @name METHODS

/**
 Generate a new question.
 */
- (void)generateQuestion;

/**
 Print out the generated question to the console.
 */
- (void)printQuestion;

/**
 Check if the answer to a question is correct.
 @param userAns The user's answer to be compared against the actual answer.
 @return YES if the answers match, NO otherwise.
 */
- (BOOL)checkAnswer:(NSInteger)userAns;

- (NSTimeInterval)answerTime;

@end

#endif /* Question_h */
