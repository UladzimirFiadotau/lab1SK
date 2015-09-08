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
    NSLog(@"Gardener go to shake tree");
    [tree shake];
}

- (void) pourTree:(id<Tree>)tree {
    NSLog(@"Gardener go to pour tree");
    [tree grown];
}

- (NSMutableArray* ) ripFruitCount:(int)fruitCount FromTree:(id<Tree>)tree {
    NSLog(@"Gardener go to rip fruits");
    NSMutableArray* fruits = [[NSMutableArray alloc] init];
    unsigned int count = 0;
    for (int i = 0; i < fruitCount; i++) {
        Fruit* fruit = [tree ripFruit];
        if (fruit != nil) {
            count++;
            [fruits addObject:fruit];
        }
    }
    NSLog(@"   >> %d fruits ripped", count);
    return fruits;
}

@end
