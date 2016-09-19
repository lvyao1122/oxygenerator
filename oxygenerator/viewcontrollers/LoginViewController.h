//
//  LoginViewController.h
//  oxygenerator
//
//  Created by 吕瑶 on 16/9/18.
//  Copyright © 2016年 吕瑶. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *PhoneTextfild;
@property (weak, nonatomic) IBOutlet UITextField *passWordTextfield;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
@property (weak, nonatomic) IBOutlet UIButton *forgetButton;

@property (weak, nonatomic) IBOutlet UIButton *loginButton;
@end
