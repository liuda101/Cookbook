//
//  QXViewController.m
//  Alert
//
//  Created by 刘 奇峰 on 13-11-19.
//  Copyright (c) 2013年 qq2xx. All rights reserved.
//

#import "QXViewController.h"

@interface QXViewController ()

@end

@implementation QXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Alert"
                              message:@"You've been delivered an alert"
                              delegate:self
                              cancelButtonTitle:@"Cancel"
                              otherButtonTitles:nil];
    
    [alertView setAlertViewStyle:UIAlertViewStylePlainTextInput];
    
    UITextField *text = [alertView textFieldAtIndex:0];
    [text setKeyboardType:UIKeyboardTypePhonePad];
    
    // alert styles:
    // UIAlertViewStylePlainTextInput
    // UIAlertViewStyleSecureTextInput
    // UIAlertViewStyleLoginAndPasswordInput
    
    [alertView show];
}

-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"%d", buttonIndex);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
