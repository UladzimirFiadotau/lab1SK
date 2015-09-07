//
//  Leaf.h
//  AppleSystem
//
//  Created by Admin on 07.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Helper.h"

@interface Leaf : NSObject


@property MyColor currentColor;
@property BOOL isOnTree;


-(NSString *)getColor;
-(void)getOld;
-(id)init;
-(BOOL)fall;

@end
