//
//  ViewController.m
//  为企服务
//
//  Created by W_K  MAC on 16/7/12.
//  Copyright © 2016年 W_K  MAC. All rights reserved.
//

#import "ViewController.h"
#import "ShijianViewController.h"
@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>
{
    UIImageView *image;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _gongnengArray = [[NSMutableArray alloc]initWithCapacity:10];
    [self toplayout];
    [self footlayout];
    [self centerlayout];
    [self method];
    [self gongnengLayout];
    CGFloat leftViewX = -self.view.frame.size.width*0.75;
    CGFloat leftViewY = 0;
    CGFloat leftViewW = self.view.frame.size.width*0.75;
    CGFloat leftViewH = self.view.frame.size.height;
    _leftView = [[UIView alloc]init];
    _leftView.frame = CGRectMake(leftViewX, leftViewY, leftViewW, leftViewH);
    _leftView.backgroundColor = [UIColor colorWithRed:0 green:1 blue:1 alpha:1];
    [self.view addSubview:_leftView];
    
    
    CGFloat buttonX = self.view.frame.size.width*0.75;
    CGFloat buttonY = 0;
    CGFloat buttonW = self.view.frame.size.width*0.25;
    CGFloat buttonH = self.view.frame.size.height;
    _buttonYIN = [[UIButton alloc]init];
    _buttonYIN.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
    [_buttonYIN setAlpha:1];
    _buttonYIN.userInteractionEnabled = YES;
    [_buttonYIN addTarget:self action:@selector(yincang) forControlEvents:UIControlEventTouchUpInside];
    _buttonYIN.hidden = YES;
    [self.view addSubview:_buttonYIN];
    


}
-(void)footlayout{
    
    CGFloat footViewX = 0;
    CGFloat footViewY = self.view.frame.size.height-44;
    CGFloat footViewW = self.view.frame.size.width;
    CGFloat footViewH = 44;
    _footView = [[UIView alloc]init];
    _footView.frame = CGRectMake(footViewX, footViewY, footViewW, footViewH);
    _footView.backgroundColor = [UIColor colorWithRed:0.988 green:0.988 blue:0.988 alpha:1];
    [self.view addSubview:_footView];
    
    CGFloat button1X = 0;
    CGFloat button1Y = 0;
    CGFloat button1W = footViewW/3;
    CGFloat button1H = footViewH;
    _button1 = [[UIButton alloc]init];
    _button1.frame = CGRectMake(button1X, button1Y, button1W, button1H);
    [_button1 setImage:[UIImage imageNamed:@"shouye"] forState:UIControlStateNormal];
    [_button1 addTarget:self action:@selector(shouye1) forControlEvents:UIControlEventTouchUpInside];
    [_button1 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [_button1 setTitle:@"首页" forState:UIControlStateNormal];
    _button1.titleLabel.font = [UIFont fontWithName:@"Arial" size:12];
    [_footView addSubview:_button1];
    _button1.titleEdgeInsets = UIEdgeInsetsMake(25, -22, 0, 0);
    _button1.imageEdgeInsets = UIEdgeInsetsMake(-17, 29, 0, 0);
    
    CGFloat button2X = button1W;
    CGFloat button2Y = button1Y;
    CGFloat button2W = button1W;
    CGFloat button2H = button1H;
    _button2 = [[UIButton alloc]init];
    _button2.frame = CGRectMake(button2X, button2Y, button2W, button2H);
    [_button2 setImage:[UIImage imageNamed:@"tongxun"] forState:UIControlStateNormal];
    [_button2 addTarget:self action:@selector(shouye2) forControlEvents:UIControlEventTouchUpInside];
    [_button2 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [_button2 setTitle:@"通讯录" forState:UIControlStateNormal];
    _button2.titleLabel.font = [UIFont fontWithName:@"Arial" size:12];
    [_footView addSubview:_button2];
    _button2.titleEdgeInsets = UIEdgeInsetsMake(25, -22, 0, 0);
    _button2.imageEdgeInsets = UIEdgeInsetsMake(-17, 33, 0, 0);
    
    CGFloat button3X = button2X+button2W;
    CGFloat button3Y = button1Y;
    CGFloat button3W = button1W;
    CGFloat button3H = button1H;
    _button3 = [[UIButton alloc]init];
    _button3.frame = CGRectMake(button3X, button3Y, button3W, button3H);
    [_button3 setImage:[UIImage imageNamed:@"wode"] forState:UIControlStateNormal];
    [_button3 addTarget:self action:@selector(shouye3) forControlEvents:UIControlEventTouchUpInside];
    [_button3 setTitleColor:[UIColor lightGrayColor] forState:UIControlStateNormal];
    [_button3 setTitle:@"我的" forState:UIControlStateNormal];
    _button3.titleLabel.font = [UIFont fontWithName:@"Arial" size:12];
    [_footView addSubview:_button3];
    _button3.titleEdgeInsets = UIEdgeInsetsMake(25, -22, 0, 0);
    _button3.imageEdgeInsets = UIEdgeInsetsMake(-17, 25, 0, 0);
    
}
-(void)shouye1{
    
    NSLog(@"button1");
}
-(void)shouye2{
    
    NSLog(@"button2");
    
}
-(void)shouye3{
    
    NSLog(@"button3");
}

-(void)toplayout{
    
    CGFloat topViewX = 0;
    CGFloat topViewY = 0;
    CGFloat topViewW = self.view.frame.size.width;
    CGFloat topViewH = 60;
    _topView = [[UIView alloc]init];
    _topView.frame = CGRectMake( topViewX, topViewY, topViewW, topViewH);
    _topView.backgroundColor = [UIColor colorWithRed:0.32 green:0.63 blue:0.88 alpha:1];
    [self.view addSubview:_topView];
    
    CGFloat labX = topViewW/3;
    CGFloat labY = topViewH/2.3;
    CGFloat labW = topViewW/3;
    CGFloat labH = topViewH/2;
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(labX, labY, labW, labH);
    label.text = @"为企服务";
    label.font = [UIFont fontWithName:@"Arial" size:20];
    label.textAlignment = NSTextAlignmentCenter;
    [_topView addSubview:label];
    
    CGFloat butX = 5;
    CGFloat butY = topViewH/2;
    CGFloat butW = topViewW/10;
    CGFloat butH = topViewH/2.5;
    _button = [[UIButton alloc]init];
    _button.frame = CGRectMake(butX, butY, butW, butH);
    [_button setImage:[UIImage imageNamed:@"wode"] forState:UIControlStateNormal];
    [_button addTarget:self action:@selector(sanheng) forControlEvents:UIControlEventTouchUpInside];
    [_topView addSubview:_button];
    
 
}

-(void)centerlayout{
    
    
    CGFloat centerViewX = 0;
    CGFloat centerViewY = 60;
    CGFloat centerViewW = self.view.frame.size.width;
    CGFloat centerViewH = self.view.frame.size.height - 60 - 44;
    _centerView = [[UIView alloc]init];
    _centerView.frame = CGRectMake(centerViewX, centerViewY, centerViewW, centerViewH);
    _centerView.backgroundColor = [UIColor colorWithRed:0.925 green:0.925 blue:0.925 alpha:1];
    [self.view addSubview:_centerView];
   
    
    
}
-(void)gongnengLayout{
    
    CGFloat viewW = self.view.frame.size.width;
    CGFloat viewH = _centerView.frame.size.height*7/11-7;
    CGFloat ButW = viewW/3-1;
    CGFloat ButH = viewH/3-1;
    for (int i = 0 ; i < 3; i++) {
        for (int j = 0; j < 3; j++) {
            
        
        _gongnengBut  = [[UIButton alloc]initWithFrame:CGRectMake (1+j*(ButW+1), (_scrollView.frame.size.height+5)+i*(ButH+1), ButW, ButH)];
        [_gongnengBut setImage:[UIImage imageNamed:[NSString stringWithFormat:@"tu%ld",_gongnengArray.count]] forState:UIControlStateNormal];
        _gongnengBut.backgroundColor = [UIColor colorWithRed:1 green:1 blue:1 alpha:1];
        [_centerView addSubview:_gongnengBut];
        [_gongnengArray addObject:_gongnengBut];
        }
        
    }
    
    UIButton *butt1 = (UIButton *)_gongnengArray[0];
    [butt1 addTarget:self action:@selector(butt1) forControlEvents:UIControlEventTouchUpInside];
    [butt1 setTitle:@"企业档案" forState:UIControlStateNormal];
    [butt1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt1.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt1.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
    UIButton *butt2 = (UIButton *)_gongnengArray[1];
    [butt2 addTarget:self action:@selector(butt2) forControlEvents:UIControlEventTouchUpInside];
    [butt2 setTitle:@"决策分析" forState:UIControlStateNormal];
    [butt2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt2.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt2.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
    UIButton *butt3 = (UIButton *)_gongnengArray[2];
    [butt3 addTarget:self action:@selector(butt3) forControlEvents:UIControlEventTouchUpInside];
    [butt3 setTitle:@"企业走访" forState:UIControlStateNormal];
    [butt3 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt3.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt3.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
    UIButton *butt4 = (UIButton *)_gongnengArray[3];
    [butt4 addTarget:self action:@selector(butt4) forControlEvents:UIControlEventTouchUpInside];
    [butt4 setTitle:@"通知公告" forState:UIControlStateNormal];
    [butt4 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt4.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt4.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
    UIButton *butt5 = (UIButton *)_gongnengArray[4];
    [butt5 addTarget:self action:@selector(butt5) forControlEvents:UIControlEventTouchUpInside];
    [butt5 setTitle:@"政策中心" forState:UIControlStateNormal];
    [butt5 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt5.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt5.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
    UIButton *butt6 = (UIButton *)_gongnengArray[5];
    [butt6 addTarget:self action:@selector(butt6) forControlEvents:UIControlEventTouchUpInside];
    [butt6 setTitle:@"事件管理" forState:UIControlStateNormal];
    [butt6 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt6.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt6.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
    UIButton *butt7 = (UIButton *)_gongnengArray[6];
    [butt7 addTarget:self action:@selector(butt7) forControlEvents:UIControlEventTouchUpInside];
    [butt7 setTitle:@"考勤签到" forState:UIControlStateNormal];
    [butt7 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt7.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt7.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
    UIButton *butt8 = (UIButton *)_gongnengArray[7];
    [butt8 addTarget:self action:@selector(butt8) forControlEvents:UIControlEventTouchUpInside];
    [butt8 setTitle:@"工作汇报" forState:UIControlStateNormal];
    [butt8 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt8.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -70);
    butt8.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
    UIButton *butt9 = (UIButton *)_gongnengArray[8];
    [butt9 addTarget:self action:@selector(butt9) forControlEvents:UIControlEventTouchUpInside];
    [butt9 setTitle:@"知识库" forState:UIControlStateNormal];
    [butt9 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    butt9.imageEdgeInsets = UIEdgeInsetsMake(-20, 0, 0, -50);
    butt9.titleEdgeInsets = UIEdgeInsetsMake(60, -45, 0, 0);
    
}
-(void)butt1{
    
    NSLog(@"企业档案");
    
}
-(void)butt2{
    NSLog(@"决策分析");
}
-(void)butt3{
    
    NSLog(@"企业走访");
    
}
-(void)butt4{
    
    NSLog(@"通知公告");
    
}
-(void)butt5{
    
    NSLog(@"政策中心");
    
}
-(void)butt6{
    
    ShijianViewController *shijian = [[ShijianViewController alloc]init];
    [self presentViewController:shijian animated:YES completion:nil];
    
}
-(void)butt7{
    
    NSLog(@"考勤签到");
    
}
-(void)butt8{
    
    NSLog(@"工作汇报");
    
}
-(void)butt9{
    
    NSLog(@"知识库");
    
}

-(void)sanheng{
    
    
    _buttonYIN.hidden = NO;
    [UIView animateWithDuration:0.4 animations:^{
        CGFloat leftViewX = 0;
        CGFloat leftViewY = 0;
        CGFloat leftViewW = self.view.frame.size.width*0.75;
        CGFloat leftViewH = self.view.frame.size.height;
        _leftView.frame = CGRectMake(leftViewX, leftViewY, leftViewW, leftViewH);
        
    }];
    CGFloat imageViewX = 0;
    CGFloat imageViewY = 0;
    CGFloat imageViewW = _leftView.frame.size.width;
    CGFloat imageViewH = _leftView.frame.size.height/5;
    _imageView = [[UIImageView alloc]init];
    _imageView.frame = CGRectMake(imageViewX, imageViewY, imageViewW, imageViewH);
    _imageView.image = [UIImage imageNamed:@"1"];
    [_leftView addSubview:_imageView];
    
    
    CGFloat tableViewX = 0;
    CGFloat tableviewY = _leftView.frame.size.height/5;
    CGFloat tableViewW = _leftView.frame.size.width;
    CGFloat tableViewH = _leftView.frame.size.height-tableviewY;
    CGRect tableViewrect = CGRectMake(tableViewX, tableviewY, tableViewW, tableViewH);
    _tableVc = [[UITableView alloc]initWithFrame:tableViewrect style:UITableViewStylePlain];
    _tableVc.dataSource = self;
    _tableVc.delegate = self;
    _tableVc.showsVerticalScrollIndicator = NO;
    [_leftView addSubview:_tableVc];
    
    
    
}

-(void)yincang{
    
    _buttonYIN.hidden = YES;
    [UIView animateWithDuration:0.4 animations:^{
        CGFloat leftViewX = -self.view.frame.size.width*0.75;
        CGFloat leftViewY = 0;
        CGFloat leftViewW = self.view.frame.size.width*0.75;
        CGFloat leftViewH = self.view.frame.size.height;
        _leftView.frame = CGRectMake(leftViewX, leftViewY, leftViewW, leftViewH);
    }];
    _imageView = [[UIImageView alloc]init];
    _imageView.frame = _leftView.frame;
    _imageView.image = [UIImage imageNamed:@"1"];
   [_leftView addSubview:_imageView];
    
}

-(NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 18;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
    }
    cell.textLabel.text = @"项目";
    cell.imageView.image = [UIImage imageNamed:@"iconk"];
    return cell;
}

-(void)method{
    //1 设置 image
    //图片位置
    CGFloat imageX = 0;
    CGFloat imageY = 0;
    CGFloat imageW = self.scrollView.frame.size.width;
    CGFloat imageH = self.scrollView.frame.size.height;
   
    
    for (int i = 0; i < self.imageTotal; i++) {
        image = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, _scrollView.frame.size.height)];
        
        image.image=[UIImage imageNamed:[NSString stringWithFormat:@"图%i",i]];
        imageX = i * imageW;
        image.frame=CGRectMake(imageX, imageY, imageW, imageH);
        [self.scrollView addSubview:image];
    }
    
    
    
    //2 设置 scrollView
    //隐藏进度条
    self.scrollView.showsHorizontalScrollIndicator=NO;
    
    //设置拖拽范围
    CGFloat sizeW = self.imageTotal*imageW;
    self.scrollView.contentSize =CGSizeMake(sizeW, 0);
    
    //设置分页
    self.scrollView.pagingEnabled=YES;
    
    
    //监听scrollView 滚动
    self.scrollView.delegate=self;
    
    
    
    //3 设置 pageControl
    //设置共用多少页
    self.pageControl.numberOfPages= self.imageTotal;
    
    //设置其他页码颜色 绿色
    self.pageControl.pageIndicatorTintColor = [UIColor lightGrayColor];
    
    //设置当前页码颜色 红色
    self.pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    
    
    
    //4.添加定时器
    [self addTimer];
}

#pragma mark - 图片调用方法
/**
 *  下一张图片
 */
-(void)nextImage
{
    NSInteger page = self.pageControl.currentPage;
    if (page==(self.imageTotal-1)) {
        page=0;
    }else{
        page++;
    }
    self.scrollView.contentOffset=CGPointMake(page*self.scrollView.frame.size.width, 0);
}




#pragma mark - timer方法
/**
 *  添加定时器
 */
-(void)addTimer
{
    self.timer =  [NSTimer scheduledTimerWithTimeInterval:2 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    //多线程 UI IOS程序默认只有一个主线程，处理UI的只有主线程。如果拖动第二个UI，则第一个UI事件则会失效。
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSRunLoopCommonModes];
}



/**
 *  关闭定时器
 */
-(void)closeTimer
{
    [self.timer invalidate];
}




#pragma mark - scrollView事件
/**
 *  scrollView 开始拖拽的时候调用
 *
 *  @param scrollView <#scrollView description#>
 */
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView
{
    [self closeTimer];
}

/**
 * scrollView滚动的时候调用
 *
 *  @param scrollView <#scrollView description#>
 */
-(void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    //    分页计算方法
    //    当前页=(scrollView.contentOffset.x+scrollView.frame.size.width/2)/scrollView.frame.size.width
    CGFloat page = (scrollView.contentOffset.x+scrollView.frame.size.width/2)/(scrollView.frame.size.width);
    self.pageControl.currentPage=page;
    
}

/**
 *  scrollView 结束拖拽的时候调用
 *
 *  @param scrollView <#scrollView description#>
 *  @param decelerate decelerate description
 */
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate
{
    [self addTimer];
}




#pragma mark - 懒加载
-(UIScrollView *)scrollView
{
    if (!_scrollView) {
        _scrollView = [[UIScrollView alloc]init];
        
        //设置frame
        //200是图片高度
        CGFloat scrollX = 0;
        CGFloat scrollY = 60;
        CGFloat scrollW = self.view.frame.size.width;
        CGFloat scrollH = _centerView.frame.size.height*4/11;
       
        _scrollView.frame = CGRectMake(scrollX, scrollY, scrollW, scrollH);
        _scrollView.backgroundColor = [UIColor blackColor];
        
        //添加到view
        [self.view addSubview:_scrollView];
    }
    return _scrollView;
}

-(UIPageControl *)pageControl
{
    if (!_pageControl) {
        _pageControl = [[UIPageControl alloc]init];
        
        //设置frame
        CGFloat pageW = 100;
        CGFloat pageH = 15;
        CGFloat pageX = (self.view.frame.size.width-pageW)/2;
        CGFloat pageY = (_scrollView.frame.size.height+60)*0.9;
        _pageControl.frame =CGRectMake(pageX, pageY, pageW, pageH);
        
        //添加到view
        [self.view addSubview:_pageControl];
    }
    return _pageControl;
}


-(int)imageTotal
{
    return 5;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
