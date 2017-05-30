//
//  main.m
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        while(true) {
            //get user input
            printf("Input goes here: ");
            char str[255];
            fgets(str,255,stdin);
            
            //convert the input to a NSString and formats
            NSString *convertedStr = [NSString stringWithCString:str encoding:NSUTF8StringEncoding];
            [convertedStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            NSLog(@"you entered: %@",convertedStr);
        }
    }
    return 0;
}
