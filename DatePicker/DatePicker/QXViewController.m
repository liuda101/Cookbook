//
//  QXViewController.m
//  DatePicker
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
    
    self.datePicker = [[UIDatePicker alloc] init];
    self.datePicker.center = self.view.center;
    
    // self.datePicker.datePickerMode = UIDatePickerModeCountDownTimer;
    // self.datePicker.datePickerMode = UIDatePickerModeDate;
    // self.datePicker.datePickerMode = UIDatePickerModeDateAndTime;
    // self.datePicker.datePickerMode = UIDatePickerModeTime;
    
    NSDate *date = [NSDate date];
    NSTimeInterval oneYearTime = 365 * 24 * 60 * 60;
    NSDate *oneYearFromToday = [date dateByAddingTimeInterval:oneYearTime];
    NSDate *twoYearsFromToday = [date dateByAddingTimeInterval:oneYearTime * 2];
    
    self.datePicker.minimumDate = oneYearFromToday;
    self.datePicker.maximumDate = twoYearsFromToday;
    
    [self.view addSubview:self.datePicker];
    
    // we can get the "self.datePicker.countDownDuration"
    
    [self.datePicker addTarget:self action:@selector(datePickerChanged:) forControlEvents:UIControlEventValueChanged];
}

-(void)datePickerChanged:(UIDatePicker *)datePicker
{
    NSLog(@"Date: %@", datePicker.date);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
