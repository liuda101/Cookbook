//
//  QXSecondViewController.m
//  Navigation
//
//  Created by 刘 奇峰 on 13-11-25.
//  Copyright (c) 2013年 qq2xx. All rights reserved.
//

#import "QXSecondViewController.h"

@interface QXSecondViewController ()

@end

@implementation QXSecondViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    self.title = @"Second";
    UIImageView *imgView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    imgView.contentMode = UIViewContentModeScaleAspectFill;
    UIImage *img = [UIImage imageNamed:@"AAA"];
    [imgView setImage:img];
    self.navigationItem.titleView = imgView;
    
    UISwitch *switcher = [[UISwitch alloc] init];
    switcher.on = YES;
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:switcher];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)back
{
    // [self.navigationController popViewControllerAnimated:YES];
    NSMutableArray *ary = [NSMutableArray arrayWithArray:self.navigationController.viewControllers];
    [ary removeLastObject];
    [self.navigationController setViewControllers:ary animated:YES];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    [self performSelector:@selector(back) withObject:nil afterDelay:5.0f];
}

@end
