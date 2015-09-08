//
//  GeneralTree.m
//  AppleSystem
//
//  Created by Admin on 07.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "GeneralTree.h"
#import "Leaf.h"
#include "stdlib.h"

@implementation GeneralTree

- (void) grown {
    
    for (Leaf* leaf in _leafs) {
        if(arc4random_uniform(100) < 30){
            [leaf getOld];
        }
    }
    int newLeafs = arc4random_uniform(10);
    for (int i = 0; i < newLeafs; i++) {
        [_leafs addObject:[Leaf createLeaf]];
    }
    
    
    NSLog(@"Tree grown -- %d new leafs", newLeafs);
}

- (void) shake {
 
    unsigned int countOfLeafs = (unsigned int)[_leafs count];
    int toFall = arc4random_uniform(countOfLeafs);
    
    for (int i = 0; i < toFall; i++) {
        int index = arc4random_uniform(--countOfLeafs);
        Leaf* leaf = [_leafs objectAtIndex:index];
        [leaf fall];
        [_leafs removeObjectAtIndex:index];
    }

    
    NSLog(@"Tree have been shaked -- %d leafs fell" , toFall);
}

-(id) init {
    self = [super init];
    int leafCount = arc4random_uniform(10);
    _leafs = [[NSMutableArray alloc] init];
    for(int i=0; i< leafCount; ++i)
        [_leafs addObject:[[Leaf alloc] init]];
    return self;
}

- (Fruit*) ripFruit {
    return nil;
}

@end
