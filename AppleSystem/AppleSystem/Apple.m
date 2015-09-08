//
//  Apple.m
//  AppleSystem
//
//  Created by fpmi on 03.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Apple.h"

@implementation Apple

- (id) init {
    self = [super init];
    self.isOnTree = YES;
    self.color = GREEN;
    _boneCount = 3;
    return self;
}

+ (Apple*) createApple {
    return [[Apple alloc] init];
}

- (void) mature {
    _boneCount++;
    if (self.color != RED) {
      self.color++;
    }
    //NSLog(@"Apple has matered: bones - %d , new color = %@", _boneCount , [self getColor]);
}

@end
