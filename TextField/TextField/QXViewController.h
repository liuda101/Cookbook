//
//  QXViewController.h
//  TextField
//
//  Created by 刘 奇峰 on 13-11-26.
//  Copyright (c) 2013年 qq2xx. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QXViewController : UIViewController<UITextFieldDelegate>

@property(strong, nonatomic) UITextField *textField;
@property(strong, nonatomic) UILabel *label;

@end
