//
//  Basket.m
//  AppleSystem
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Basket.h"

@implementation Basket {
    NSMutableArray* _fruits;
}

- (id) init {
    _fruits = [[NSMutableArray alloc] init];
    return self;
}

- (void) putFruit:(Fruit *)fruit {
    [_fruits addObject:fruit];
    NSLog(@"%@ has been put.", [fruit className]);
}

- (BasketIterator*) iterator {
    return [[BasketIterator alloc] initWithArray:_fruits];
}

@end
