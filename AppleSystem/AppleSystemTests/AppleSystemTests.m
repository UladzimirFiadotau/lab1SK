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
    self.bToTest = [[Basket alloc] init];
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

- (void) testIteratorEmpty {
    BasketIterator *iterator = [self.bToTest iterator];
    XCTAssertFalse([iterator hasNext], "Not empty iterator");
}

-(void) testIterationCount {
    BasketIterator *iterator = [self.bToTest iterator];
    int appleCount = 5;
    for(int i=0; i<appleCount; ++i){
        [self.bToTest putFruit:[Apple createApple]];
    }
    
    int iterationCount = 0;
    while([iterator hasNext])
    {
        [iterator next];
        iterationCount++;
    }
    XCTAssertEqual(appleCount, iterationCount, "Busket Iteration count incorrect");
}

- (void) testIteratorSequence {
    NSMutableArray *apples = [[NSMutableArray alloc] init];
    
    int appleCount = 5;
    for(int i=0; i<appleCount; ++i){
        Apple *apple = [Apple createApple];
        [apples addObject:apple];
        [self.bToTest putFruit:apple];
    }
    
    BasketIterator *iterator = [self.bToTest iterator];
    //NSString* error = @"Busket return wrong sequence";
    if([iterator next] != [apples objectAtIndex:0]){
        XCTFail("Busket return wrong sequence");
    }
    if([iterator next] != [apples objectAtIndex:4]){
        XCTFail("Busket return wrong sequence");
    }
    if([iterator next] != [apples objectAtIndex:1]){
        XCTFail("Busket return wrong sequence");
    }
    if([iterator next] != [apples objectAtIndex:3]){
        XCTFail("Busket return wrong sequence");
    }
    if([iterator next] != [apples objectAtIndex:2]){
        XCTFail("Busket return wrong sequence");
    }
    
}

@end
