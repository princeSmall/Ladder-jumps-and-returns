//
//  ViewController.m
//  阶梯tableview
//
//  Created by tongle on 16/8/29.
//  Copyright © 2016年 tongle. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
@interface ViewController ()<UIPopoverPresentationControllerDelegate>
@property (nonatomic,strong)TableViewController * viewController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc]initWithTitle:@"add" style:UIBarButtonItemStylePlain target:self action:@selector(jieti)];    
    // Do any additional setup after loading the view, typically from a nib.
}

-(void)jieti{
    self.viewController = [[TableViewController alloc]init];
    self.viewController.modalPresentationStyle = UIModalPresentationPopover;
    //设置依附的按钮
    self.viewController.popoverPresentationController.barButtonItem = self.navigationItem.leftBarButtonItem;
    
    //可以指示小箭头颜色
    self.viewController.popoverPresentationController.backgroundColor = [UIColor whiteColor];
    
    //content尺寸
    self.viewController.preferredContentSize = CGSizeMake(400, 400);
    
    //pop方向
    self.viewController.popoverPresentationController.permittedArrowDirections = UIPopoverArrowDirectionUp;
    //delegate
    self.viewController.popoverPresentationController.delegate = self;
    
    [self presentViewController:self.viewController animated:YES completion:nil];
}
//代理方法 ,点击即可dismiss掉每次init产生的PopViewController
-(UIModalPresentationStyle)adaptivePresentationStyleForPresentationController:(UIPresentationController *)controller{
    return UIModalPresentationNone;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
