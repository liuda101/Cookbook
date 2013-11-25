//
//  QXStringReverserActivity.m
//  ViewController
//
//  Created by 刘 奇峰 on 13-11-20.
//  Copyright (c) 2013年 qq2xx. All rights reserved.
//

#import "QXStringReverserActivity.h"

@interface QXStringReverserActivity ()<UIAlertViewDelegate>

@property (strong, nonatomic) NSArray *activityItems;

@end

@implementation QXStringReverserActivity

-(void)alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex
{
    [self activityDidFinish:YES];
}

-(NSString *)activityType
{
    return [[NSBundle mainBundle].bundleIdentifier stringByAppendingString:@".%@", NSStringFromClass(self.class)];
}

-(NSString *)activityTitle
{
    return @"Reverse Title";
}



@end
