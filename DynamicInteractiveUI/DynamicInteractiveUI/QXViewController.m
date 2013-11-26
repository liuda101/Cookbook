//
//  QXViewController.m
//  DynamicInteractiveUI
//
//  Created by 刘 奇峰 on 13-11-26.
//  Copyright (c) 2013年 qq2xx. All rights reserved.
//

#import "QXViewController.h"

@interface QXViewController ()

@property (nonatomic, strong) UIView *squareView;
@property (nonatomic, strong) UIDynamicAnimator *animator;

@end

@implementation QXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.squareView = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, 100.0f, 100.0f)];
    self.squareView.center = self.view.center;
    self.squareView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.squareView];
    
    self.animator = [[UIDynamicAnimator alloc] initWithReferenceView:self.view];
    UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:@[self.squareView]];
    [self.animator addBehavior:gravity];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
