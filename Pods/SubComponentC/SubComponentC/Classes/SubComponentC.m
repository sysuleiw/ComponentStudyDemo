//
//  SubComponentC.m
//  Pods-SubComponentC_Example
//
//  Created by 王磊 on 2019/7/9.
//

#import "SubComponentC.h"

@interface SubComponentC ()

@property (nonatomic, strong) UILabel *label;
@end

@implementation SubComponentC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.label = [UILabel new];
    self.label.frame = UIScreen.mainScreen.bounds;
    self.label.backgroundColor = [UIColor whiteColor];
    self.label.text = @"我是子模块C";
    [self.view addSubview:self.label];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
