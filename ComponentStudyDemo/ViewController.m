//
//  ViewController.m
//  ComponentStudyDemo
//
//  Created by 王磊 on 2019/7/8.
//  Copyright © 2019 王磊. All rights reserved.
//

#import "ViewController.h"
#import <SubComponentA/SubViewControllerA.h>
#import <SubComponentC/SubComponentC.h>
@interface ViewController ()

@property (nonatomic, strong) UIButton *btn;
@property (nonatomic, strong) UIButton *btn2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.view addSubview:self.btn];
    [self.view addSubview:self.btn2];
    
}
- (UIButton *)btn
{
    if (!_btn)
    {
        _btn = [UIButton new];
        [_btn setTitle:@"打开子组件A" forState:UIControlStateNormal];
        _btn.frame = CGRectMake(0, 0, 200, 100);
        [_btn addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
        [_btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    }
    return _btn;
}

- (void)btnAction
{
    SubViewControllerA *vc = [SubViewControllerA new];
    [self presentViewController:vc animated:YES completion:nil];
}

- (UIButton *)btn2
{
    if (!_btn2)
    {
        _btn2 = [UIButton new];
        [_btn2 setTitle:@"打开子组件C" forState:UIControlStateNormal];
        _btn2.frame = CGRectMake(0, 100, 200, 100);
        [_btn2 addTarget:self action:@selector(btnAction2) forControlEvents:UIControlEventTouchUpInside];
        [_btn2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    }
    return _btn2;
}

- (void)btnAction2
{
    SubComponentC *vc = [SubComponentC new];
    [self presentViewController:vc animated:YES completion:nil];
}
@end
