//
//  healthViewController.m
//  oxygenerator
//
//  Created by 吕瑶 on 16/9/19.
//  Copyright © 2016年 吕瑶. All rights reserved.
//

#import "healthViewController.h"
#import "AddPersonViewController.h"
@interface healthViewController ()

@end

@implementation healthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //设置导航
    self.navigationController.navigationBar.translucent=NO;
    self.navigationController.navigationBar.barTintColor=[UIColor colorWithRed:255.0/255.0 green:121.0/255.0  blue:57.0/255.0 alpha:1];
    self.navigationItem.title=self.navTitle;
    self.navigationController.navigationBar.titleTextAttributes=@{NSForegroundColorAttributeName: [UIColor whiteColor],NSFontAttributeName : [UIFont boldSystemFontOfSize:20]};
    //返回按钮
    UIBarButtonItem *backItem=[[UIBarButtonItem alloc] initWithTitle:@" " style:UIBarButtonItemStyleDone target:nil action:nil];
    self.navigationItem.backBarButtonItem=backItem;
    //右按钮，添加
    UIBarButtonItem *rightItem=[[UIBarButtonItem alloc] initWithTitle:@"添加" style:UIBarButtonItemStyleDone target:self action:@selector(addClick)];
    self.navigationItem.rightBarButtonItem=rightItem;
    rightItem.tintColor=[UIColor whiteColor];
    
//    UIButton*rightButton=[UIButton buttonWithType:UIButtonTypeCustom];
//    rightButton.frame=CGRectMake(0, 0, 60, 30);
//    [rightButton setTitle:@"添加" forState:UIControlStateNormal];
//    [rightButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
//    [rightButton addTarget:self action:@selector(addClick) forControlEvents:UIControlEventTouchUpInside];
//    UIBarButtonItem*rightItem=[[UIBarButtonItem alloc]initWithCustomView:rightButton];
//    self.navigationItem.rightBarButtonItem=rightItem;

    
}
-(void)addClick{
    AddPersonViewController *vc=[[AddPersonViewController alloc] init];
    vc.title=@"添加";
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
