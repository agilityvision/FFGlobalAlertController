//
//  FFViewController.m
//  FFGlobalAlertController
//
//  Created by Eric Larson on 06/18/2015.
//  Copyright (c) 2015 ForeFlight. All rights reserved.
//

#import "FFViewController.h"
#import "UIAlertController+Window.h"

@interface FFViewController ()

@end

@implementation FFViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (IBAction)showAlert:(id)sender
{
    static NSInteger alertCount = 1;
    
    NSString *message = [NSString stringWithFormat:@"This is your alert, you've show %ld alerts", (long)alertCount];
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Global Alert" message:message preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil]];
    [alert show];
    alertCount++;
    
// show a second Alert to simulate an Alert coming in from an unrelated part of your project
    if (alertCount % 2 == 0) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [self showAlert:nil];
        });
    }
}

- (IBAction)showAlertField:(id)sender
{
// need local variable for TextField to prevent retain cycle of Alert otherwise UIWindow
// would not disappear after the Alert was dismissed
    __block UITextField *localTextField;
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Global Alert" message:@"Enter some text" preferredStyle:UIAlertControllerStyleAlert];
    [alert addAction:[UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        NSLog(@"do something with text:%@", localTextField.text);
    }]];
    [alert addTextFieldWithConfigurationHandler:^(UITextField *textField) {
        localTextField = textField;
    }];
    [alert show];
}

@end
