//
//  Card.h
//  CardMatchGame
//
//  Created by Yung Dai on 2015-05-03.
//  Copyright (c) 2015 Yung Dai. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;


- (int)match:(NSArray *) otherCards;

@end
