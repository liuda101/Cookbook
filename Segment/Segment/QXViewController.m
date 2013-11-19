//
//  QXViewController.m
//  Segment
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
	// Do any additional setup after loading the view, typically from a nib.
    
    self.segment = [[UISegmentedControl alloc] initWithItems:
                    [NSArray arrayWithObjects:@"Apple",@"Mac",@"iPhone", nil]];
    
    [self.view addSubview:self.segment];
    
    self.segment.center = self.view.center;
    
    [self.segment addTarget:self action:@selector(segmentChanged:) forControlEvents:UIControlEventValueChanged];
    self.segment.momentary = YES;
}

-(void)segmentChanged:(UISegmentedControl*)segment
{
    NSLog(@"%d", self.segment.selectedSegmentIndex);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
