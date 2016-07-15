//
//  ViewController.h
//  为企服务
//
//  Created by W_K  MAC on 16/7/12.
//  Copyright © 2016年 W_K  MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
//主页面布局
@property(nonatomic,strong)UIView *topView;
@property(nonatomic,strong)UIView *footView;
@property(nonatomic,strong)UIView *centerView;
@property(nonatomic,strong)UIView *leftView;
@property(nonatomic,strong)UIImageView *imageView;
@property(nonatomic,strong)UIButton *buttonYIN;
@property(nonatomic,strong) UIButton *button;
@property(nonatomic,strong)UITableView *tableVc;
//底部导航栏的按钮
@property(nonatomic,strong)UIButton *button1;
@property(nonatomic,strong)UIButton *button2;
@property(nonatomic,strong)UIButton *button3;
//轮播图
//滚动视图
@property (nonatomic,strong) UIScrollView *scrollView;
//页码
@property (nonatomic,strong) UIPageControl *pageControl;
//定时器
@property (nonatomic,strong) NSTimer *timer;
//图片数量
@property (nonatomic,assign) int imageTotal;
//功能按钮
@property(nonatomic,strong)UIButton *gongnengBut;
//功能按钮数组
@property(nonatomic,strong)NSMutableArray *gongnengArray;





@end

