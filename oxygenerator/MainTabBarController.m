//
//  MainTabBarController.m
//  oxygenerator
//
//  Created by 吕瑶 on 16/9/19.
//  Copyright © 2016年 吕瑶. All rights reserved.
//

#import "MainTabBarController.h"
#import "healthViewController.h"
#import "messageViewController.h"
#import "newsViewController.h"
#import "aboutMeViewController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self createVC];
    [self createItem];
    
}
-(void)createItem{
    NSArray *titleArray=@[@"健康",@"消息",@"咨询",@"我的"];
    NSArray *UnSelectArray=@[@"tab-1",@"tab-2",@"tab-3",@"tab-4"];
    NSArray *SelectArray=@[@"selectTab-1",@"selectTab-2",@"selectTab-3",@"selectTab-4"];
    
    for (int i=0; i<self.tabBar.items.count; i++) {
        UITabBarItem *item=self.tabBar.items[i];
       
        [item setSelectedImage:[[UIImage imageNamed:SelectArray[i]] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]];
        [item setImage:[UIImage imageNamed:UnSelectArray[i]]];
        [item setTitle:titleArray[i]];
        
    }
    
//    //设置背景图
    [[UITabBar appearance]setBackgroundImage:[UIImage imageNamed:@"daohang"]];
    //设置文字的颜色
    [[UITabBarItem appearance]setTitleTextAttributes:@{NSForegroundColorAttributeName:[UIColor blackColor]} forState:UIControlStateSelected];
    self.tabBar.backgroundColor=[UIColor blackColor];
    



}
-(void)createVC
{
    healthViewController *vc=[[healthViewController alloc] init];
    vc.navTitle=@"健康";
    UINavigationController *nc=[[UINavigationController alloc] initWithRootViewController:vc];
    
    messageViewController *vc1=[[messageViewController alloc] init];
    vc1.navTitle=@"消息";
    UINavigationController *nc1=[[UINavigationController alloc] initWithRootViewController:vc1];
    
    newsViewController *vc2=[[newsViewController alloc] init];
    vc2.navTitle=@"咨询";
    UINavigationController *nc2=[[UINavigationController alloc] initWithRootViewController:vc2];
    
    aboutMeViewController *vc3=[[aboutMeViewController alloc] init];
    vc3.navTitle=@"我的";
    UINavigationController *nc3=[[UINavigationController alloc] initWithRootViewController:vc3];
    
    NSArray*ncArray=@[nc,nc1,nc2,nc3];
    self.viewControllers=ncArray;
    
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
