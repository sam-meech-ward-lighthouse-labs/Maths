//
//  main.m
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "AdditionQuestion.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"MATHS!");
        
        bool gameOn = true;
        while(gameOn) {
            //get user input
            AdditionQuestion *newQuestion = [[AdditionQuestion alloc] init];
            [newQuestion printQuestion];
            char str[255];
            fgets(str,255,stdin);
            
            //convert the input to a NSString and formats
            NSString *convertedStr = [NSString stringWithCString:str encoding:NSUTF8StringEncoding];
            NSString *trimmed = [convertedStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"%@",trimmed);
            //QUIT CONDITION
            if ([trimmed isEqualToString:@"quit"]) {
                gameOn = NO;
                continue;
            }
            
            NSInteger response = [trimmed integerValue];
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
