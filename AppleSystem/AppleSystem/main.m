//
//  main.m
//  AppleSystem
//
//  Created by fpmi on 03.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Apple.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Apple* apple = [Apple createApple];
        
        [apple mature];
        [apple fall];
        NSLog(@"Hello, World!");
    }
    return 0;
}
