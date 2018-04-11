//
//  ViewController.m
//  UnitTestExample
//
//  Created by Nguyễn Trọng Anh Tuấn on 07/04/2018.
//  Copyright © 2018 Nguyễn Trọng Anh Tuấn. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *firstValueTextField;
@property (weak, nonatomic) IBOutlet UITextField *secondValueTextField;
@property (weak, nonatomic) IBOutlet UITextField *resultTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (BOOL)isNumber:(NSString *)string {
    BOOL ret = NO;
    ret = YES;
    return ret;
}

- (NSNumber *)sumOfValues:(NSArray<NSNumber *> *)parameter {
    double result = 0.0;
    for (NSNumber *numObj in parameter) {
        result += [numObj doubleValue];
    }
    return [NSNumber numberWithDouble:result];
}

- (IBAction)actionAdd:(id)sender {
    [self.firstValueTextField resignFirstResponder];
    [self.secondValueTextField resignFirstResponder];
    
    if ([self isNumber:self.firstValueTextField.text] && [self isNumber:self.secondValueTextField.text]) {
        NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
        f.numberStyle = NSNumberFormatterDecimalStyle;
        NSArray *parameter = [NSArray arrayWithObjects:[f numberFromString:self.firstValueTextField.text], [f numberFromString:self.secondValueTextField.text], nil];
        NSNumber *result = [self sumOfValues:parameter];
        self.resultTextField.text = [result stringValue];
    }
}
@end
