//
//  ViewController+UnitTest.h
//  UnitTestExampleTests
//
//  Created by Nguyễn Trọng Anh Tuấn on 11/04/2018.
//  Copyright © 2018 Nguyễn Trọng Anh Tuấn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (UnitTest)

@property (weak, nonatomic) IBOutlet UITextField *firstValueTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondValueTextField;
@property (weak, nonatomic) IBOutlet UITextField *resultTextField;

- (BOOL)isNumber:(NSString *)string;
- (NSNumber *)sumOfValues:(NSArray<NSNumber *> *)parameter;
- (IBAction)actionAdd:(id)sender;

@end
