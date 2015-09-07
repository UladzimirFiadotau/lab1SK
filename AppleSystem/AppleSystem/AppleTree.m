//
//  AppleTree.m
//  AppleSystem
//
//  Created by Admin on 07.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "AppleTree.h"
#import "Apple.h"
#include "stdlib.h"

@implementation AppleTree

+ (AppleTree* ) appleTreeWithAppleCount:(int)appleCount {
    return [[AppleTree alloc] initWithAppleCount:appleCount];
}

- (id) init {
    _apples = [[NSMutableArray alloc] init];
    return self;
}

- (id) initWithAppleCount:(int)appleCount {
    _apples = [[NSMutableArray alloc] initWithCapacity:appleCount];
    for (int i = 0; i < appleCount; i++) {
        [_apples addObject:[Apple createApple]];
    }
    return self;
}

- (void) shake {
    [super shake];
    unsigned int countOfApples = (unsigned int)[_apples count];
    int toFall = arc4random_uniform(countOfApples);
    
    for (int i = 0; i < toFall; i++) {
        int index = arc4random_uniform(--countOfApples);
        Apple* apple = [_apples objectAtIndex:index];
        [apple fall];
        [_apples removeObjectAtIndex:index];
    }
    NSLog(@" %d apples fell " , toFall);
}

- (void) grown {
    [super grown];
    for (Apple* apple in _apples) {
        [apple mature];
    }
    int newApples = arc4random_uniform(10);
    for (int i = 0; i < newApples; i++) {
        [_apples addObject:[Apple createApple]];
    }
}

@end
