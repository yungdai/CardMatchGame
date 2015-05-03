//
//  Deck.h
//  CardMatchGame
//
//  Created by Yung Dai on 2015-05-03.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject


// add a card or draw a randomCard
- (void)addCard:(Card *)card atTop:(BOOL)atTop;
- (Card *)drawRandomCard;

@end
