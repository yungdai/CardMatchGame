//
//  Card.m
//  CardMatchGame
//
//  Created by Yung Dai on 2015-05-03.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "Card.h"

@implementation Card

- (int)match:(NSArray *) otherCards {
    int score = 0;
    
    // go through all the cards and see if the card matches with anny cards in the array
    for (Card *card in otherCards) {
        // if the card contents are the same, then you get a point
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    return score;
}

@end
