# Ladder-jumps-and-returns

## 1、阶梯tableViewviewcontroller的大小

-(CGSize)preferredContentSize{
    
    if (self.popoverPresentationController != nil) {
        CGSize tempSize ;
        tempSize.height = self.view.frame.size.height;
        tempSize.width  = 155;
        CGSize size = [_tableView sizeThatFits:tempSize];  //返回一个完美适应tableView的大小的 size
        return size;
    }else{
        return [super preferredContentSize];
    }
    
}

## 2、在viewController中生成tableViewController
{

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

## 3、跳转都用present

if (indexPath.row ==0) {

        [self presentViewController:oneView animated:YES completion:nil];
    }else if (indexPath.row==1){
        [self presentViewController:twoView animated:YES completion:nil];
    }else{
       [self presentViewController:threeView animated:YES completion:nil];
    }
}

## 4、在控制器中生成navgationbar，item
{

    UINavigationBar * navBar = [[UINavigationBar alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 44)];
    navBar.tintColor = [UIColor greenColor];
    UINavigationItem * item = [[UINavigationItem alloc]initWithTitle:@"threeView"];
    [navBar pushNavigationItem:item animated:YES];
    item.leftBarButtonItem = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemReply target:self action:@selector(reMove)];
    
    [self.view addSubview:navBar];
    
 }
