//
//  Fruit.h
//  AppleSystem
//
//  Created by Admin on 08.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Helper.h"

@interface Fruit : NSObject

@property MyColor color;
@property (getter=isOnTree) BOOL isOnTree;

- (NSString *) getColor;
- (void) mature;
- (void) fall;

@end
