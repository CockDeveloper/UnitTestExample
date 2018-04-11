//
//  ViewControllerTest.m
//  UnitTestExampleTests
//
//  Created by Nguyễn Trọng Anh Tuấn on 09/04/2018.
//  Copyright © 2018 Nguyễn Trọng Anh Tuấn. All rights reserved.
//

#import <XCTest/XCTest.h>

@interface ViewControllerTest : XCTestCase

@property (strong, nonatomic) ViewController *viewController;

@end

@implementation ViewControllerTest

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    // In UI tests it is usually best to stop immediately when a failure occurs.
    self.continueAfterFailure = NO;
    // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
//    [[[XCUIApplication alloc] init] launch];

    // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    self.viewController = (ViewController *)[[UIStoryboard storyboardWithName:@"Main" bundle:nil] instantiateViewControllerWithIdentifier:@"ViewController"];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
    self.viewController = nil;
}

- (void)testExample {
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    
    // The test case execute sum of 3+4=7
    // Prepear view
    [self.viewController loadView];
    [self.viewController viewDidLoad];
    
    // 1. Setup data
    self.viewController.firstValueTextField.text = [@3 stringValue];
    self.viewController.secondValueTextField.text = [@4 stringValue];
    
    // 2. Run function
    [self.viewController actionAdd:nil];
    
    // 3. Check result
    XCTAssertEqual(self.viewController.resultTextField.text, [@7 stringValue]);
    
}

@end
