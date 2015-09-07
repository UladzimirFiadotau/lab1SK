//
//  AppleTree.h
//  AppleSystem
//
//  Created by Admin on 07.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "GeneralTree.h"

@interface AppleTree : GeneralTree
@property NSMutableArray* apples;
+ (AppleTree *) appleTreeWithAppleCount: (int) appleCount;
- (id) init;
- (id) initWithAppleCount: (int) appleCount;
@end
