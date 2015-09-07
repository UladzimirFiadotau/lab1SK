//
//  Apple.h
//  AppleSystem
//
//  Created by fpmi on 03.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Helper.h"

@interface Apple : NSObject

@property MyColor color;
@property int boneCount;
@property (getter=isOnTree) BOOL isOnTree;

+ (id) createApple;
- (id) init;
- (void) mature;
- (void) fall;
- (NSString *) getColor;
@end
