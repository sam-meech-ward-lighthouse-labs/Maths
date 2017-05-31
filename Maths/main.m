//
//  main.m
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS!");
        InputHandler *inputHandle = [[InputHandler alloc] init];
        ScoreKeeper *scoreHandle = [[ScoreKeeper alloc] init];
        QuestionManager *questionHandle = [[QuestionManager alloc] init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc] init];
        
        BOOL gameOn = YES;
        
        //game loop
        while(gameOn) {
            //Make new question and ask user for answer
            Question *newQuestion = [questionFactory generateRandomQuestion];//[[Question alloc] init];
            [questionHandle addQuestion:newQuestion];
            
            [newQuestion printQuestion];
            char str[255];
            fgets(str,255,stdin);
            
            //convert the input to a NSString and formats
            NSString *parsed = [inputHandle parser:str];

            //QUIT CONDITION
            if ([parsed isEqualToString:@"quit"]) {
                gameOn = NO;
                continue;
            }
            
            NSInteger response = [parsed integerValue];
            //check the answer
            if([newQuestion checkAnswer:response]) {
                NSLog(@"Right!");
                [scoreHandle newScore:YES];
            } else {
                NSLog(@"Wrong!");
                [scoreHandle newScore:NO];
            }
            
            NSString *timeString = [questionHandle timeOutput];
            NSLog(@"%@",timeString);
        }
    }
    NSLog(@"Thanks for playing!");
    return 0;
}
