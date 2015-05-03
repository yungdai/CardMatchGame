//
//  Deck.m
//  CardMatchGame
//
//  Created by Yung Dai on 2015-05-03.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import "Deck.h"

@interface Deck()

@property (strong, nonatomic) NSMutableArray *cards; // read/writable array of Card

@end

@implementation Deck

- (NSMutableArray *) cards {
    
    if (!_cards) _cards = [[NSMutableArray alloc]init];
    return _cards;
}


- (void)addCard:(Card *)card atTop:(BOOL)atTop {
    
    
    if (atTop ) {
        [self.cards insertObject:card atIndex:0];
    } else {
        [self.cards addObject:card];
    }
}

- (void)addCard:(Card *)card {
    [self addCard:card atTop:NO];

}

- (Card *)drawRandomCard {
    Card *randomCard = nil;
    
    
    if ([self.cards count]) {
    
        unsigned index = arc4random() % [self.cards count];
        randomCard = self.cards [index];
        [self.cards removeObjectAtIndex:index];
    }
    return randomCard;
    
}

@end
