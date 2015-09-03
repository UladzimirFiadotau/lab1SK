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
    _isOnTree = YES;
    _color = GREEN;
    _boneCount = 3;
    return self;
}

+ (Apple*) createApple {
    return [[Apple alloc] init];
}

- (void) fall {
    _isOnTree = NO;
    NSLog(@"Apple has fault");
}

- (void) mature {
    _boneCount++;
    if (_color != RED) {
      _color++;
    }
    NSLog(@"Apple has matered: bones - %d", _boneCount);
}
@end
