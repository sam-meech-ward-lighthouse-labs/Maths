//
//  ScoreKeeper.m
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "ScoreKeeper.h"

@implementation ScoreKeeper

- (void)newScore:(BOOL)isCorrect;
{
    //increment the appropriate counters
    _total++;
    if (isCorrect) {
        _correct++;
    } else {
        _wrong++;
    }
    //calculate the player's percentage and print the updated score
    _percentage = (_correct / _total) * 100;
    
    _scoreString = [NSString stringWithFormat:@"score: %.0lf right, %.0lf wrong ---- %.2lf%%",_correct,_wrong,_percentage];
    NSLog(@"%@",_scoreString);
}

@end
