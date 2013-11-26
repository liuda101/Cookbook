//
//  QXViewController.m
//  Label
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
    
    
    UILabel *label = [[UILabel alloc] init];
    label.backgroundColor = [UIColor clearColor];
    label.textColor = [UIColor blackColor];
    label.text = @"iOS SDK";
    label.font = [UIFont boldSystemFontOfSize:70.0f];
//    label.center = self.view.center;
    label.shadowColor = [UIColor lightGrayColor];
    label.shadowOffset = CGSizeMake(2.0f, 2.0f);
    [label sizeToFit];
    label.numberOfLines = 1;
//    label.frame = CGRectMake(0, 30, 320, 100);
//    label.textAlignment = NSTextAlignmentCenter;
    label.center = self.view.center;
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
