//
//  QXViewController.m
//  Slider
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
    
    self.slider = [[UISlider alloc] initWithFrame:CGRectMake(10, 40, 200, 23)];
    self.slider.minimumValue = 0.0f;
    self.slider.maximumValue = 100.0f;
    self.slider.value = 20.0f;
    [self.view addSubview:self.slider];
    
    self.slider.minimumTrackTintColor = [UIColor redColor];
    self.slider.maximumTrackTintColor = [UIColor greenColor];
    self.slider.thumbTintColor = [UIColor blueColor];
    // self.slider.minimumValueImage = [UIImage imageNamed:<#(NSString *)#>];
    // self.slider.maximumValueImage = [UIImage imageNamed:<#(NSString *)#>];
    
    self.slider.continuous = NO;
    [self.slider addTarget:self action:@selector(sliderChanged:) forControlEvents:UIControlEventValueChanged];
}

-(void)sliderChanged:(UISlider*)slider
{
    NSLog(@"New value: %f", slider.value);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
