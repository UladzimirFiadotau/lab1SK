//
//  Tree.h
//  AppleSystem
//
//  Created by Admin on 07.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

@protocol Tree <NSObject>

- (void) grown;
- (void) shake;
- (Fruit* ) ripFruit;
@end
