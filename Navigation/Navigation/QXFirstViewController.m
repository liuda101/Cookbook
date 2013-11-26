//
//  QXFirstViewController.m
//  Navigation
//
//  Created by 刘 奇峰 on 13-11-25.
//  Copyright (c) 2013年 qq2xx. All rights reserved.
//

#import "QXFirstViewController.h"
#import "QXSecondViewController.h"

@interface QXFirstViewController ()

@property (strong, nonatomic) UIButton *button;

@end

@implementation QXFirstViewController

-(void)buttonPressed:(UIButton *)button
{
    QXSecondViewController *secondController = [[QXSecondViewController alloc] initWithNibName:nil bundle:nil];
    [self.navigationController pushViewController:secondController animated:YES];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"First";
    
    
    self.button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [self.button addTarget:self action:@selector(buttonPressed:) forControlEvents:UIControlEventTouchUpInside];

    [self.button setTitle:@"Push" forState:UIControlStateNormal];
    [self.button sizeToFit];
    self.button.center = self.view.center;
    
    [self.view addSubview:self.button];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Edit" style:UIBarButtonItemStylePlain target:self action:@selector(buttonPressed:)];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(buttonPressed:)];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
