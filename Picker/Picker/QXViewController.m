//
//  QXViewController.m
//  Picker
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
    
    self.picker = [[UIPickerView alloc] init];
    self.picker.center = self.view.center;
    self.picker.dataSource = self;
    self.picker.delegate = self;
    
    // self.picker.showsSelectionIndicator = YES;
    // this property is valid in iOS 6 and older
    
    [self.view addSubview:self.picker];
    
    // [self.picker reloadAllComponents];
    // [self.picker reloadComponent:0];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 10;
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [NSString stringWithFormat:@"Row %ld", (long)row + 1];
}

@end
