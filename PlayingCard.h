// this is a subclass of Card


#import "Card.h"  // Card class is our superclass

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;

@property (nonatomic) NSUInteger rank;

@end
