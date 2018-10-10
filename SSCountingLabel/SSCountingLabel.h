//
//  HYJCountingLabel.h
//  HYJRefactoring
//
//  Created by quanminqianbao on 2018/8/31.
//  Copyright © 2018年 HYJRefactoring. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SSCountingLabel : UILabel
///多少秒算完, 默认2
@property (nonatomic, assign) NSTimeInterval totalTime;
///最大数字
@property (nonatomic, assign) CGFloat maxNum;
- (void)startCounting;
- (void)endCounting;

@end
