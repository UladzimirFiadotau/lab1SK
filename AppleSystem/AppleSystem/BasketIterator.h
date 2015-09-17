//
//  BasketIterator.h
//  AppleSystem
//
//  Created by fpmi on 10.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"
@interface BasketIterator : NSObject

- (id) initWithArray: (NSMutableArray* ) array;
- (BOOL) hasNext;
- (Fruit*) next;

@end
