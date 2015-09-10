//
//  Basket.h
//  AppleSystem
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"
#import "BasketIterator.h"

@interface Basket : NSObject

- (id) init;
- (void) putFruit: (Fruit*) fruit;
- (BasketIterator* ) iterator;


@end
