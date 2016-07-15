//
//  ShangbaoViewController.h
//  为企服务
//
//  Created by W_K  MAC on 16/7/14.
//  Copyright © 2016年 W_K  MAC. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ShangbaoViewController : UIViewController
@property(nonatomic,strong)UILabel *titleLabel;
@property(nonatomic,strong)UILabel *leixingLabel;
@property(nonatomic,strong)UILabel *addressLabel;
@property(nonatomic,strong)UITextField *titleField;
@property(nonatomic,strong)UIButton *leixingBut;
@property(nonatomic,strong)UITextField *addressField;
@property(nonatomic,strong)UITextView *textView;
@property(nonatomic,strong)UIButton *querenBut;
@property(nonatomic,strong)UIButton *cancelBut;
@property(nonatomic,strong)UIView *Centerview;
//隐藏的label
@property(nonatomic,strong)UILabel *yincang;
-(void)toplayout:(NSString *)titleStr mainView:(UIView *)mainview;
@end
