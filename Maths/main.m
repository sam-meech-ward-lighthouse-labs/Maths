//
//  main.m
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "AdditionQuestion.h"
#include "InputHandler.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS!");
        InputHandler *inputHandle = [[InputHandler alloc] init];
        bool gameOn = true;
        
        //game loop
        while(gameOn) {
            //Make new question and ask user for answer
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
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
            } else {
                NSLog(@"Wrong!");
            }
        }
    }
    return 0;
}
