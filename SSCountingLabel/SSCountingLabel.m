//
//  HYJCountingLabel.m
//  HYJRefactoring
//
//  Created by quanminqianbao on 2018/8/31.
//  Copyright © 2018年 HYJRefactoring. All rights reserved.
//

#import "SSCountingLabel.h"

@interface SSCountingLabel(){
    CGFloat currentNum;
}
@property (nonatomic, strong) CADisplayLink *displayLink;
@end

@implementation SSCountingLabel

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.totalTime = 2;
    }
    return self;
}

- (CADisplayLink *)displayLink{
    if (!_displayLink) {
        _displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(displayLinkAction:)];
        [_displayLink addToRunLoop:[NSRunLoop currentRunLoop] forMode:NSRunLoopCommonModes];
    }
    return _displayLink;
}

- (void)displayLinkAction:(CADisplayLink *)displayLink{

    if (currentNum>=self.maxNum) {
        [self endCounting];
        self.text = [NSString stringWithFormat:@"%.2f",currentNum];
    }else{
        CGFloat num = self.maxNum/(self.totalTime*(1/displayLink.duration));
        currentNum+=num;
        self.text = [NSString stringWithFormat:@"%.2f",currentNum];
    }
}

- (void)startCounting{
    self.displayLink.paused = NO;
}
- (void)endCounting{
    self.displayLink.paused = YES;
    [self.displayLink invalidate];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
