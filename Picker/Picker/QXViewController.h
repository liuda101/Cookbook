//
//  QXViewController.h
//  Picker
//
//  Created by 刘 奇峰 on 13-11-19.
//  Copyright (c) 2013年 qq2xx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QXViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (nonatomic, strong) UIPickerView *picker;

@end
