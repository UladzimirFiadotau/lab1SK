//
//  AppleSystemTests.m
//  AppleSystemTests
//
//  Created by Admin on 17.09.15.
//  Copyright (c) 2015 fpmi. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <XCTest/XCTest.h>
#import "Basket.h"
#import "BasketIterator.h"
#import "Apple.h"

@interface AppleSystemTests : XCTestCase


@property (nonatomic) Basket *bToTest;
@end





@implementation AppleSystemTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    XCTAssert(YES, @"Pass");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

- (void) testIteratorSequence {
    for(int i=0; i<5; ++i){
        [self.bToTest putFruit:[Apple createApple]];
    }
    int result = 1;
    BasketIterator *iterator = [self.bToTest iterator];
    if([iterator getPosition] != 0)
        result = 0;
    XCTAssertEqual(result, 1, "Busket Iterator not performed successfully");
}


@end
