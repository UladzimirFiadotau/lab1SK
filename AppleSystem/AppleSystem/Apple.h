//
//  Apple.h
//  AppleSystem
//
//  Created by fpmi on 03.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Helper.h"
#import "Fruit.h"

@interface Apple : Fruit

@property int boneCount;

+ (id) createApple;
- (id) init;

@end
