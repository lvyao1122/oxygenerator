//
//  RegisterViewController.m
//  oxygenerator
//
//  Created by 吕瑶 on 16/9/18.
//  Copyright © 2016年 吕瑶. All rights reserved.
//

#import "RegisterViewController.h"

@interface RegisterViewController ()

@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.verificationCodeButton.layer.masksToBounds=YES;
    self.verificationCodeButton.layer.cornerRadius=5;
    self.verificationCodeButton.layer.borderWidth=2;
    CGColorSpaceRef colorSpaceRef = CGColorSpaceCreateDeviceRGB();
    
    CGColorRef color = CGColorCreate(colorSpaceRef, (CGFloat[]){255,121,57,1});
    self.verificationCodeButton.layer.borderColor=color;
    
    self.registerButton.layer.masksToBounds=YES;
    self.registerButton.layer.cornerRadius=5;
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
