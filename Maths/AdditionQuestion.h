//
//  AdditionQuestion.h
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#ifndef AdditionQuestion_h
#define AdditionQuestion_h

@interface AdditionQuestion : NSObject
//a new random question is generated each time init is called on this class

@property (nonatomic)NSString *question;

@property (nonatomic)NSInteger answer;

- (void)printQuestion;

- (BOOL)checkAnswer:(NSInteger)userAns;

@end

#endif /* AdditionQuestion_h */
