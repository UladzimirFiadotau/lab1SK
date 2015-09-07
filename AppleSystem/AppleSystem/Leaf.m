//
//  Leaf.m
//  AppleSystem
//
//  Created by Admin on 07.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "Leaf.h"

@implementation Leaf


+(Leaf*)createLeaf {
    return [[Leaf alloc] init];
}

-(void)getOld{
    if(_currentColor <= YELLOW){
        _currentColor += 1;
    }
}

-(NSString *)getColor{
    NSString * result = nil;
    switch (_currentColor) {
        case GREEN:
            result = @"Green";
            break;
        case YELLOW:
            result = @"Yellow";
            break;
        default:
            result = @"Unkown Color";
            break;
    }
    return result;
}

-(BOOL)fall{
    BOOL result = false;
    if(_isOnTree){
        _isOnTree = false;
        result = true;
    }
    return result;
}

-(id)init{
    self = [super init];
    _currentColor = GREEN;
    _isOnTree = true;
    return self;
}

@end
