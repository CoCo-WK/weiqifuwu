//
//  ShijianViewController.m
//  为企服务
//
//  Created by W_K  MAC on 16/7/14.
//  Copyright © 2016年 W_K  MAC. All rights reserved.
//

#import "ShijianViewController.h"
#import "ShangbaoViewController.h"
#import "ChaxunViewController.h"
@interface ShijianViewController ()

@end

@implementation ShijianViewController

- (void)viewDidLoad {
    [super viewDidLoad];
     _gongnengArray = [[NSMutableArray alloc]initWithCapacity:10];
    [self toplayout];
    [self Centerlayout];
}
-(void)toplayout{
    CGFloat topViewX = 0;
    CGFloat topViewY = 0;
    CGFloat topViewW = self.view.frame.size.width;
    CGFloat topViewH = 60;
    UIView *topView = [[UIView alloc]init];
    topView.frame = CGRectMake( topViewX, topViewY, topViewW, topViewH);
    topView.backgroundColor = [UIColor colorWithRed:0.3 green:0.6 blue:0.8 alpha:1];
    [self.view addSubview:topView];
    CGFloat labX = topViewW/3;
    CGFloat labY = topViewH/2.3;
    CGFloat labW = topViewW/3;
    CGFloat labH = topViewH/2;
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(labX, labY, labW, labH);
    label.text = @"事件管理";
    label.font = [UIFont fontWithName:@"Arial" size:20];
    label.textAlignment = NSTextAlignmentCenter;
    [topView addSubview:label];
    CGFloat butX = 5;
    CGFloat butY = topViewH/2;
    CGFloat butW = topViewW/10;
    CGFloat butH = topViewH/2.5;
    UIButton *button = [[UIButton alloc]init];
    button.frame = CGRectMake(butX, butY, butW, butH);
    [button setImage:[UIImage imageNamed:@"返回"] forState:UIControlStateNormal];
    [button addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
    [topView addSubview:button];
}
-(void)Centerlayout{
    CGFloat CenterviewX = 0;
    CGFloat CenterviewY = 60;
    CGFloat CenterviewW = self.view.frame.size.width;
    CGFloat CenterviewH = self.view.frame.size.height-60;
    _Centerview = [[UIView alloc]init];
    _Centerview.frame = CGRectMake(CenterviewX, CenterviewY, CenterviewW, CenterviewH);
    _Centerview.backgroundColor = [UIColor colorWithRed:0.925 green:0.925 blue:0.925 alpha:1];
    [self.view addSubview:_Centerview];
    
    CGFloat viewW = self.view.frame.size.width;
    CGFloat viewH = _Centerview.frame.size.height/2;
    CGFloat butSumW = viewW/2-1;
    CGFloat butSumH = viewH/2-1;
    for (int i = 0; i < 2; i++) {
        for (int j = 0; j < 2; j++) {
            _butSum  = [[UIButton alloc]initWithFrame:CGRectMake (1+j*(butSumW+1), 5+i*(butSumH+1), butSumW, butSumH)];
            [_butSum setImage:[UIImage imageNamed:[NSString stringWithFormat:@"tu%ld",_gongnengArray.count]] forState:UIControlStateNormal];
            _butSum.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
            [_Centerview addSubview:_butSum];
            [_gongnengArray addObject:_butSum];
        }
    }
    UIButton *butt1 = (UIButton *)_gongnengArray[0];
    [butt1 addTarget:self action:@selector(butt1) forControlEvents:UIControlEventTouchUpInside];
    [butt1 setTitle:@"任务上报" forState:UIControlStateNormal];
    [butt1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt1.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt1.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
    UIButton *butt2 = (UIButton *)_gongnengArray[1];
    [butt2 addTarget:self action:@selector(butt2) forControlEvents:UIControlEventTouchUpInside];
    [butt2 setTitle:@"任务查询" forState:UIControlStateNormal];
    [butt2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt2.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt2.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
    UIButton *butt3 = (UIButton *)_gongnengArray[2];
    [butt3 addTarget:self action:@selector(butt3) forControlEvents:UIControlEventTouchUpInside];
    [butt3 setTitle:@"待签收" forState:UIControlStateNormal];
    [butt3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt3.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt3.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
    UIButton *butt4 = (UIButton *)_gongnengArray[3];
    [butt4 addTarget:self action:@selector(butt4) forControlEvents:UIControlEventTouchUpInside];
    [butt4 setTitle:@"任务处理" forState:UIControlStateNormal];
    [butt4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt4.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt4.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    

}
-(void)butt1{
    
    NSLog(@"任务上报");
    ShangbaoViewController *shangbao = [[ShangbaoViewController alloc]init];
    [self presentViewController:shangbao animated:YES completion:nil];
}
-(void)butt2{
    NSLog(@"任务查询");
    ChaxunViewController *chaxun = [[ChaxunViewController alloc]init];
     [self presentViewController:chaxun animated:YES completion:nil];
}
-(void)butt3{
    
    NSLog(@"待签收");
    
}
-(void)butt4{
    
    NSLog(@"任务处理");
    
}

-(void)back{
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
