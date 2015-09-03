//
//  Apple.h
//  AppleSystem
//
//  Created by fpmi on 03.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    GREEN, RED
} AppleColor;

@interface Apple : NSObject

@property AppleColor color;
@property int boneCount;
@property (getter=isOnTree) BOOL isOnTree;

+ (id) createApple;
- (id) init;
- (void) mature;
- (void) fall;
@end
