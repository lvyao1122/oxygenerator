//
//  LoginViewController.m
//  oxygenerator
//
//  Created by 吕瑶 on 16/9/18.
//  Copyright © 2016年 吕瑶. All rights reserved.
//

#import "LoginViewController.h"
#import "RegisterViewController.h"
#import "ForgetPassWordViewController.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.navigationController.navigationBar.translucent=NO;
    self.loginButton.layer.masksToBounds=YES;
    self.loginButton.layer.cornerRadius=5;
    self.navigationController.navigationBar.barTintColor=[UIColor colorWithRed:255.0/255.0 green:121.0/255.0  blue:57.0/255.0 alpha:1];
    self.navigationItem.title=@"登录";
    
    self.navigationController.navigationBar.titleTextAttributes=@{NSForegroundColorAttributeName: [UIColor whiteColor],NSFontAttributeName : [UIFont boldSystemFontOfSize:18]};
    UIBarButtonItem *backItem=[[UIBarButtonItem alloc] initWithTitle:@" " style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.backBarButtonItem=backItem;
    
}
//注册新用户
- (IBAction)registClick:(id)sender {
    
    RegisterViewController *vc=[[RegisterViewController alloc] init];
    vc.title=@"注册";
    [self.navigationController pushViewController:vc animated:YES];
}
//忘记密码
- (IBAction)forgerClick:(id)sender {
    ForgetPassWordViewController *vc=[[ForgetPassWordViewController alloc] init];
    vc.title=@"找回密码";
    [self.navigationController pushViewController:vc animated:YES];
}
- (IBAction)loginClick:(id)sender {
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
