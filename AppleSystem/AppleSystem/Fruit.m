//
//  Fruit.m
//  AppleSystem
//
//  Created by Admin on 08.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Fruit.h"

@implementation Fruit

- (NSString *) getColor{
    NSString * result = nil;
    switch (_color) {
        case GREEN:
            result = @"Green";
            break;
        case YELLOW:
            result = @"Yellow";
            break;
        case RED:
            result = @"Red";
            break;
        default:
            result = @"Unkown Color";
            break;
    }
    return result;
}

- (void) fall {
    _isOnTree = NO;
    //NSLog(@"Apple has fault");
}



@end
