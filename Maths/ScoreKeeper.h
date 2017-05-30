//
//  ScoreKeeper.h
//  Maths
//
//  Created by Alex Lee on 2017-05-30.
//  Copyright © 2017 Alex Lee. All rights reserved.
//

#ifndef ScoreKeeper_h
#define ScoreKeeper_h

@interface ScoreKeeper : NSObject

@property (nonatomic)NSString *scoreString;

@property (nonatomic,assign) float correct;

@property (nonatomic, assign) float wrong;

@property (nonatomic, assign) float total;

@property (nonatomic,assign) float percentage;

- (void)newScore:(BOOL)isCorrect;

@end

#endif /* ScoreKeeper_h */
