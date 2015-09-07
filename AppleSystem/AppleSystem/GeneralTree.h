//
//  GeneralTree.h
//  AppleSystem
//
//  Created by Admin on 07.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Tree.h"

@interface GeneralTree : NSObject <Tree>

@property NSMutableArray* leafs;

-(id)init;

@end
