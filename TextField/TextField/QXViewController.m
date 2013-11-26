//
//  QXViewController.m
//  TextField
//
//  Created by 刘 奇峰 on 13-11-26.
//  Copyright (c) 2013年 qq2xx. All rights reserved.
//

#import "QXViewController.h"

@interface QXViewController ()

@end

@implementation QXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.textField = [[UITextField alloc] initWithFrame:CGRectMake(38, 30, 220, 31)];
    self.textField.delegate = self;
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    self.textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    self.textField.textAlignment = NSTextAlignmentCenter;
    self.textField.text = @"Sir Richard Branson";
    
    
    UILabel *l = [[UILabel alloc] initWithFrame:CGRectZero];
    l.text = @"$";
    [l sizeToFit];
    self.textField.leftView = l;
    self.textField.leftViewMode = UITextFieldViewModeAlways;
    self.textField.textAlignment = NSTextAlignmentCenter;
    
    [self.view addSubview:self.textField];
    
    CGRect labelFrame = self.textField.frame;
    labelFrame.origin.y += self.textField.frame.size.height + 10;
    self.label = [[UILabel alloc] initWithFrame:labelFrame];
    [self.view addSubview:self.label];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
