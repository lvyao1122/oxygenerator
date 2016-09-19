//
//  AddPersonViewController.m
//  oxygenerator
//
//  Created by 吕瑶 on 16/9/19.
//  Copyright © 2016年 吕瑶. All rights reserved.
//

#import "AddPersonViewController.h"
#import "personCardViewController.h"
@interface AddPersonViewController ()

@end

@implementation AddPersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.queryButton.layer.masksToBounds=YES;
    self.queryButton.layer.cornerRadius=5;
}
- (IBAction)queryClick:(id)sender {
    personCardViewController *vc=[[personCardViewController alloc] init];
    vc.title=@"详细信息";
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
