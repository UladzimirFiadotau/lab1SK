//
//  main.m
//  AppleSystem
//
//  Created by fpmi on 03.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apple.h"
#import "AppleTree.h"
#import "Gardener.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id <Tree> tree = [AppleTree appleTreeWithAppleCount:20];
        Gardener* gardener = [[Gardener alloc] init];
        NSLog(@"Gardener starts his work");
        [gardener pourTree:tree];
        [gardener pourTree:tree];
        [gardener shakeTree:tree];
        NSMutableArray* fruits = [gardener ripFruitCount:10 FromTree:tree];
        NSLog(@"Gardener finished his work, %lu fruits was ripped", (unsigned long)[fruits count]);
    }
    return 0;
}
