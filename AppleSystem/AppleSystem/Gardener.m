//
//  Gardener.m
//  AppleSystem
//
//  Created by Admin on 08.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Gardener.h"

@implementation Gardener

- (void) shakeTree:(id<Tree>)tree {
    [tree shake];
}

- (void) pourTree:(id<Tree>)tree {
    [tree grown];
}

- (NSMutableArray* ) ripFruitCount:(int)fruitCount FromTree:(id<Tree>)tree {
    NSMutableArray* fruits = [[NSMutableArray alloc] init];
    for (int i = 0; i < fruitCount; i++) {
        Fruit* fruit = [tree ripFruit];
        if (fruit != nil) {
            [fruits addObject:fruit];
        }
    }
    return fruits;
}

@end
