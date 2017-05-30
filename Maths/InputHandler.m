//
//  InputHandler.m
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "InputHandler.h"
@implementation InputHandler

- (NSString *)parser:(char*)rawInput;
{
    NSString *convertedStr = [NSString stringWithCString:rawInput encoding:NSUTF8StringEncoding];
    NSString *trimmed = [convertedStr stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    //NSLog(@"%@",trimmed);
    return trimmed;
}

@end
