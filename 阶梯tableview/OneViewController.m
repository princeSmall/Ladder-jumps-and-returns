//
//  OneViewController.m
//  阶梯tableview
//
//  Created by tongle on 2016/10/28.
//  Copyright © 2016年 tongle. All rights reserved.
//

#import "OneViewController.h"
#import "ViewController.h"

@interface OneViewController ()

@end

@implementation OneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UINavigationBar * navBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    navBar.tintColor = [UIColor greenColor];
    self.view.backgroundColor = [UIColor redColor];
    UINavigationItem * item = [[UINavigationItem alloc]initWithTitle:@"oneView"];
    [navBar pushNavigationItem:item animated:YES];
    item.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(reMove)];
    
    [self.view addSubview:navBar];
    // Do any additional setup after loading the view.
}
-(void)reMove{

    [self dismissViewControllerAnimated:YES completion:nil];
   
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
