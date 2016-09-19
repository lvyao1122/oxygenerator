//
//  ForgetPassWordViewController.m
//  oxygenerator
//
//  Created by 吕瑶 on 16/9/18.
//  Copyright © 2016年 吕瑶. All rights reserved.
//

#import "ForgetPassWordViewController.h"
#import "RetrievePassWordViewController.h"
@interface ForgetPassWordViewController ()

@end

@implementation ForgetPassWordViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)nextButton:(id)sender {
    RetrievePassWordViewController *vc=[[RetrievePassWordViewController alloc] init];
    vc.title=@"找回密码";
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
