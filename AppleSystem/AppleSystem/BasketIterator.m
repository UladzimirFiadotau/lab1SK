//
//  BasketIterator.m
//  AppleSystem
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import "BasketIterator.h"


@implementation BasketIterator {
    NSMutableArray* _array;
    unsigned int _position;
    BOOL _hasNext;
}

- (id) initWithArray: (NSMutableArray* ) array {
    _position = 0;
    _array = array;
    _hasNext = true;
    return self;
}

- (BOOL) hasNext {
    unsigned int size = (unsigned int)[_array count];
    if (size == 0)
        return false;
    return _hasNext;
}

- (Fruit*) next {
    if (![self hasNext])
        return nil;
    Fruit* fruit = [_array objectAtIndex: _position];
    unsigned int size = (unsigned int)[_array count] - 1;
    if (_position == (size / 2 + ((size % 2 == 0) ? 0 : 1))) {
        _hasNext = false;
    }
    if (_position <= (size ) /2)
        _position = size - _position ;
    else
        _position = size - _position +1;
    return fruit;
}

- (unsigned int) getPosition{
    return _position;
}

@end
