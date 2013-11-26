//
//  QXViewController.m
//  TextViewAndKeyboardNotification
//
//  Created by 刘 奇峰 on 13-11-26.
//  Copyright (c) 2013年 qq2xx. All rights reserved.
//

#import "QXViewController.h"

@interface QXViewController ()

@property(strong, nonatomic) UITextView *textView;

@end

@implementation QXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
}

-(void)handleKeyboardDidShow:(NSNotification *)notification
{
    NSValue * keyboardRectAsObject = [[notification userInfo] objectForKey:UIKeyboardFrameEndUserInfoKey];

    CGRect keyboardRect = CGRectZero;
    
    [keyboardRectAsObject getValue:&keyboardRect];
    
    NSLog(@"%f", keyboardRect.size.height);
    
//    self.textView.contentInset = UIEdgeInsetsMake(0.0f, 0.0f, keyboardRect.size.height, 0.0f);
    self.textView.textContainerInset = UIEdgeInsetsMake(0.0f, 0.0f, keyboardRect.size.height, 0.0f);
}

-(void)handleKeyboardDidHide:(NSNotification *)notification
{
    self.textView.contentInset = UIEdgeInsetsZero;
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleKeyboardDidShow:) name:UIKeyboardDidShowNotification object:nil];
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(handleKeyboardDidHide:) name:UIKeyboardDidHideNotification object:nil];
    
    
    self.textView = [[UITextView alloc] initWithFrame:self.view.bounds];
    self.textView.text = @"Some text...";
    self.textView.font = [UIFont boldSystemFontOfSize:17.0];
    [self.view addSubview:self.textView];
}

-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
