//
//  QuestionManager.h
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#ifndef QuestionManager_h
#define QuestionManager_h
#include "Question.h"
@interface QuestionManager : NSObject

@property (nonatomic)NSMutableArray *questions;

- (void)addQuestion:(Question *)question;

- (NSString *)timeOutput;

@end

#endif /* QuestionManager_h */
