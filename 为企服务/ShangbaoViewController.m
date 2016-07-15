//
//  ShangbaoViewController.m
//  为企服务
//
//  Created by W_K  MAC on 16/7/14.
//  Copyright © 2016年 W_K  MAC. All rights reserved.
//

#import "ShangbaoViewController.h"

@interface ShangbaoViewController ()<UITextViewDelegate>
{
    NSString *xuanze;
}
@end

@implementation ShangbaoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    xuanze = @"BG";
    [self toplayout:@"事件管理" mainView:self.view];
    [self Centerlayout];
}
-(void)toplayout:(NSString *)titleStr mainView:(UIView *)mainview{
    CGFloat topViewX = 0;
    CGFloat topViewY = 0;
    CGFloat topViewW = self.view.frame.size.width;
    CGFloat topViewH = 60;
    UIView *topView = [[UIView alloc]init];
    topView.frame = CGRectMake( topViewX, topViewY, topViewW, topViewH);
    topView.backgroundColor = [UIColor colorWithRed:0.3 green:0.6 blue:0.8 alpha:1];
    [mainview addSubview:topView];
    CGFloat labX = topViewW/3;
    CGFloat labY = topViewH/2.3;
    CGFloat labW = topViewW/3;
    CGFloat labH = topViewH/2;
    UILabel *label = [[UILabel alloc]init];
    label.frame = CGRectMake(labX, labY, labW, labH);
    label.text = titleStr;
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
-(void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
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
    
    CGFloat titleLabelX = 0;
    CGFloat titleLabelY = 25;
    CGFloat titleLabelW = 90;
    CGFloat titleLabelH = 35;
    _titleLabel = [[UILabel alloc]init];
    _titleLabel.frame = CGRectMake( titleLabelX, titleLabelY, titleLabelW, titleLabelH);
    _titleLabel.backgroundColor = [UIColor whiteColor];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.text = @"事件标题:";
    [_Centerview addSubview:_titleLabel];
    
    CGFloat titleFieldX = titleLabelX+titleLabelW;
    CGFloat titleFieldY = titleLabelY;
    CGFloat titleFieldW = self.view.frame.size.width-titleLabelW;
    CGFloat titleFieldH = titleLabelH;
    _titleField = [[UITextField alloc]init];
    _titleField.frame = CGRectMake(titleFieldX, titleFieldY, titleFieldW, titleFieldH);
    _titleField.placeholder = @"请输入信息";
    _titleField.backgroundColor =[UIColor whiteColor];
    [_Centerview addSubview:_titleField];
    
    CGFloat leixingLabelX = 0;
    CGFloat leixingLabelY = titleLabelY+titleLabelH+1;
    CGFloat leixingLabelW = 90;
    CGFloat leixingLabelH = 35;
    _leixingLabel = [[UILabel alloc]init];
    _leixingLabel.frame = CGRectMake(leixingLabelX, leixingLabelY, leixingLabelW, leixingLabelH);
    _leixingLabel.backgroundColor = [UIColor whiteColor];
    _leixingLabel.textAlignment = NSTextAlignmentCenter;
    _leixingLabel.text = @"事件类型:";
    [_Centerview addSubview:_leixingLabel];
    
    CGFloat leixingButX = leixingLabelX+leixingLabelW;
    CGFloat leixingButY = leixingLabelY;
    CGFloat leixingButW = self.view.frame.size.width-leixingLabelW;
    CGFloat leixingButH = leixingLabelH;
    _leixingBut = [[UIButton alloc]init];
    _leixingBut.frame = CGRectMake(leixingButX, leixingButY, leixingButW, leixingButH);
    [_leixingBut setTitle:@"保供水" forState:UIControlStateNormal];
    [_leixingBut setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [_leixingBut addTarget:self action:@selector(leixing:) forControlEvents:UIControlEventTouchUpInside];
    _leixingBut.backgroundColor = [UIColor whiteColor];
    [_Centerview addSubview:_leixingBut];
    _leixingBut.titleEdgeInsets = UIEdgeInsetsMake(0, -200, 0, 0);
    
    CGFloat addressLabelX = 0;
    CGFloat addressLabelY = leixingLabelY+leixingLabelH+1;
    CGFloat addressLabelW = 90;
    CGFloat addressLabelH = 35;
    _addressLabel = [[UILabel alloc]init];
    _addressLabel.frame = CGRectMake( addressLabelX, addressLabelY, addressLabelW, addressLabelH);
    _addressLabel.backgroundColor = [UIColor whiteColor];
    _addressLabel.textAlignment = NSTextAlignmentCenter;
    _addressLabel.text = @"事件地址:";
    [_Centerview addSubview:_addressLabel];
    
    CGFloat addressFieldX = addressLabelX+addressLabelW;
    CGFloat addressFieldY = addressLabelY;
    CGFloat addressFieldW = self.view.frame.size.width-addressLabelW;
    CGFloat addressFieldH = addressLabelH;
    _addressField = [[UITextField alloc]init];
    _addressField.frame = CGRectMake(addressFieldX, addressFieldY, addressFieldW, addressFieldH);
    _addressField.placeholder = @"请输入信息";
    _addressField.backgroundColor =[UIColor whiteColor];
    [_Centerview addSubview:_addressField];
    
    
    CGFloat textViewX = 5;
    CGFloat textViewY = addressLabelY+addressLabelH+10;
    CGFloat textViewW = _Centerview.frame.size.width-10;
    CGFloat textViewH = _Centerview.frame.size.height/4;
    _textView = [[UITextView alloc]init];
    _textView.frame = CGRectMake(textViewX, textViewY, textViewW, textViewH);
    _textView.delegate = self;
    _textView.backgroundColor =[UIColor whiteColor];
    _textView.font = [UIFont fontWithName:@"Arial" size:14];
    [_Centerview addSubview:_textView];

    
    CGFloat yincangX = 5;
    CGFloat yincangY = 0;
    CGFloat yincangW = 140;
    CGFloat yincangH = 35;
    _yincang = [[UILabel alloc]init];
    _yincang.frame = CGRectMake(yincangX, yincangY, yincangW, yincangH);
    _yincang.text = @"请输入事件内容";
    _yincang.enabled = NO;
    _yincang.backgroundColor = [UIColor clearColor];
    [_textView addSubview:_yincang];
    
    CGFloat querenButX = _Centerview.frame.size.width/5;
    CGFloat querenButY = _textView.frame.origin.y+_textView.frame.size.height+5;
    CGFloat querenButW = _Centerview.frame.size.width/5;
    CGFloat querenButH = 40;
    _querenBut = [[UIButton alloc]init];
    _querenBut.frame = CGRectMake(querenButX, querenButY, querenButW, querenButH);
    _querenBut.backgroundColor = [UIColor colorWithRed:1 green:0.843 blue:0 alpha:1];
    _querenBut.layer.cornerRadius = 7;
    [_querenBut setTitle:@"确认" forState:UIControlStateNormal];
    [_querenBut setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_querenBut addTarget:self action:@selector(queren) forControlEvents:UIControlEventTouchUpInside];
    [_Centerview addSubview:_querenBut];
    
    
    CGFloat cancelButX = _Centerview.frame.size.width*3/5;
    CGFloat cancelButY = _textView.frame.origin.y+_textView.frame.size.height+5;
    CGFloat cancelButW = _Centerview.frame.size.width/5;
    CGFloat cancelButH = 40;
    _cancelBut = [[UIButton alloc]init];
    _cancelBut.frame = CGRectMake(cancelButX, cancelButY, cancelButW, cancelButH);
    _cancelBut.backgroundColor = [UIColor colorWithRed:0.5 green:1 blue:0.83 alpha:1];
    _cancelBut.layer.cornerRadius = 7;
    [_cancelBut setTitle:@"取消" forState:UIControlStateNormal];
    [_cancelBut setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_cancelBut addTarget:self action:@selector(cancelB) forControlEvents:UIControlEventTouchUpInside];
    [_Centerview addSubview:_cancelBut];
    
}
- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    if ([text isEqualToString:@"\n"]) {
        
        [_textView resignFirstResponder];
        
        return NO;
    }
    return YES;
}

-(void)textViewDidChange:(UITextView *)textView{
    if (textView.text.length == 0) {
        _yincang.text = @"请输入事件内容";
    }else{
        _yincang.text = @"";
    }
    
}
-(void)leixing:(UIButton *)sender{
    
    UIAlertController  *alertCon = [UIAlertController alertControllerWithTitle:nil message:nil preferredStyle:UIAlertControllerStyleActionSheet];
    [alertCon addAction:[UIAlertAction actionWithTitle:@"治污水" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [sender setTitle:@"治污水" forState:UIControlStateNormal];
        xuanze = @"ZW";
    }]];
    [alertCon addAction:[UIAlertAction actionWithTitle:@"防洪水" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [sender setTitle:@"防洪水" forState:UIControlStateNormal];
        xuanze = @"FH";
    }]];
    [alertCon addAction:[UIAlertAction actionWithTitle:@"排涝水" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [sender setTitle:@"排涝水" forState:UIControlStateNormal];
        xuanze = @"BH";
    }]];
    [alertCon addAction:[UIAlertAction actionWithTitle:@"保供水" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [sender setTitle:@"保供水" forState:UIControlStateNormal];
        xuanze = @"BG";
    }]];
    [alertCon addAction:[UIAlertAction actionWithTitle:@"抓节水" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [sender setTitle:@"抓节水" forState:UIControlStateNormal];
        xuanze = @"ZJ";
    }]];
    [alertCon addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil]];
    [self presentViewController:alertCon animated:YES completion:nil];
}
-(void)queren{
    if ([_titleField.text isEqualToString:@""] | [_addressField.text isEqualToString:@""] | [_textView.text isEqualToString:@""]) {
        UIAlertController  *alertCon = [UIAlertController alertControllerWithTitle:@"温馨提示" message:@"信息不能为空" preferredStyle:UIAlertControllerStyleAlert];
        [alertCon addAction:[UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil]];
        [self presentViewController:alertCon animated:YES completion:nil];
    }
    else{
        
        [self upload];
        [self dismissViewControllerAnimated:YES completion:nil];
    }
    
}
-(void)cancelB{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)upload{
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    
    NSDictionary *dict = @{
                           @"loginUser":@"admin",
                           @"evtTitle":_titleField.text,
                           @"evtType":xuanze,
                           @"evtAddr":_addressField.text,
                           @"evtDome":_textView.text
                           
                           };
    
    NSString *str = [allURL stringByAppendingString:shijianURL1];
    NSString *urlString = [NSString stringWithFormat:@"%@&loginUser=%@&evtClass=J&evtTitle=%@&evtType=%@&evtAddr=%@&evtDome=%@",str,dict[@"loginUser"],dict[@"evtTitle"],dict[@"evtType"],dict[@"evtAddr"],dict[@"evtDome"]];
    urlString = [urlString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]];
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]];
    
    [manager POST:urlString parameters:dict constructingBodyWithBlock:^(id<AFMultipartFormData>  _Nonnull formData) {
        [formData appendPartWithFormData:data name:@"shangbao"];
       
    }
         progress:^(NSProgress * _Nonnull uploadProgress) {
             NSLog(@"%lf",1.0 * uploadProgress.completedUnitCount/uploadProgress.totalUnitCount);
         } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
             NSLog(@"success");
             NSLog(@"%@",responseObject);
             
             
         } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
             NSLog(@"failure");
         }];

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
