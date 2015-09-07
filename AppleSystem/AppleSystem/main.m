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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        id <Tree> tree = [AppleTree appleTreeWithAppleCount:20];
        [tree grown];
        [tree grown];
        [tree shake];
        [tree grown];
        [tree shake];
        [tree shake];
    }
    return 0;
}
