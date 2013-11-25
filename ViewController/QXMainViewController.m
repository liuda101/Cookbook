//
//  QXMainViewController.m
//  ViewController
//
//  Created by 刘 奇峰 on 13-11-20.
//  Copyright (c) 2013年 qq2xx. All rights reserved.
//

#import "QXMainViewController.h"

@interface QXMainViewController ()<UITextFieldDelegate>

@property (strong, nonatomic) UITextField *textField;
@property (strong, nonatomic) UIButton *shareButton;
@property (strong, nonatomic) UIActivityViewController *activityViewController;

@end

@implementation QXMainViewController

-(void)createTextField
{
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(20, 35, 280, 30)];
    self.textField.translatesAutoresizingMaskIntoConstraints = NO;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.placeholder = @"Enter text to share";
    self.textField.delegate = self;
    
    [self.view addSubview:self.textField];
}
-(void)createShareButton
{
    self.shareButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.shareButton.translatesAutoresizingMaskIntoConstraints = NO;
    self.shareButton.frame = CGRectMake(20, 80, 280, 40);
    [self.shareButton setTitle:@"Share" forState:UIControlStateNormal];
    [self.shareButton addTarget:self action:@selector(handleShare:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.shareButton];
}

-(void)handleShare:(UIButton *)button
{
    if([self.textField text].length == 0){
        UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:nil message:@"Please enter a text and then press Share" delegate:Nil cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
        [alertView show];
        return;
    }
    
    self.activityViewController = [[UIActivityViewController alloc] initWithActivityItems:@[self.textField.text] applicationActivities:nil];
    [self presentViewController:self.activityViewController animated:YES completion:^{}];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self createTextField];
    [self createShareButton];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
