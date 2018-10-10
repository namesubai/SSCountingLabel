//
//  ViewController.m
//  SSCountingLabel
//
//  Created by ThisRhythm on 2018/10/10.
//  Copyright © 2018 ThisRhythm. All rights reserved.
//

#import "ViewController.h"
#import "SSCountingLabel.h"

@interface ViewController ()
{
    SSCountingLabel *countLab;
}
@end

@implementation ViewController
- (IBAction)startAction:(id)sender {
    [countLab startCounting];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    countLab = [[SSCountingLabel alloc]init];
    countLab.frame = CGRectMake(100, 200, 200, 100);
    countLab.textAlignment = NSTextAlignmentCenter;
    countLab.font = [UIFont systemFontOfSize:40];
    countLab.maxNum = 9000;
    [self.view addSubview:countLab];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
