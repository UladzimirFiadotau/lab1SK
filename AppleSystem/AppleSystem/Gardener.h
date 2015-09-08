//
//  Gardener.h
//  AppleSystem
//
//  Created by Admin on 08.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tree.h"

@interface Gardener : NSObject

- (void) shakeTree: (id <Tree> ) tree;
- (void) pourTree: (id <Tree> ) tree;
- (NSMutableArray* ) ripFruitCount:(int)fruitCount FromTree: (id <Tree> ) tree;

@end
