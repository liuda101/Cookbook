//
//  QXViewController.m
//  Switch
//
//  Created by 刘 奇峰 on 13-11-19.
//  Copyright (c) 2013年 qq2xx. All rights reserved.
//

#import "QXViewController.h"

@interface QXViewController ()

-(void)switcherChanged:(UISwitch*)switcher;

@end

@implementation QXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.switcher = [[UISwitch alloc] initWithFrame:CGRectMake(100, 100, 0, 0)];
    
    [self.switcher addTarget:self action:@selector(switcherChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.switcher setOn:YES];
    [self.view addSubview:self.switcher];
    
    self.switcher.tintColor = [UIColor redColor];
    self.switcher.onTintColor = [UIColor blueColor];
    self.switcher.thumbTintColor = [UIColor greenColor];
    
    // The onImage and offImage size is 77*22
}

-(void)switcherChanged:(UISwitch*)switcher
{
    NSLog(@"%@", switcher);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
