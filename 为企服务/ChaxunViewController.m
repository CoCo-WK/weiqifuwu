//
//  ChaxunViewController.m
//  为企服务
//
//  Created by W_K  MAC on 16/7/15.
//  Copyright © 2016年 W_K  MAC. All rights reserved.
//

#import "ChaxunViewController.h"
#import "ShangbaoViewController.h"
@interface ChaxunViewController ()<UITableViewDelegate,UITableViewDataSource>
{
        UISearchBar *search;
    
}
@end

@implementation ChaxunViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _arr = @[@"克己奉公博卡拉顿进步的卡积分管理会计的是当时了肯德基不离开离开大江南北开了家叫你不离开多久呢dkljnvbldks",@"几乎都被 v 的办法将分别 v 看见的读哈佛吧嗲吧里看得见啊不可理解了卡绝对不能看大家女款利大街上不落窠臼看见当年不可理解肯德基啊不可理解的空间啊不可理解 打开肌肤不落窠臼来的空间不能离开家的镂空就能不可理解目的的苦难不可理解你的离开是你了吧；你",@"jkjvbkljabdkjsavnkl"];
    ShangbaoViewController *shangbao = [[ShangbaoViewController alloc]init];
    [shangbao toplayout:@"任务查询" mainView:self.view];
    [self centerLayout];
}

-(void)back{
    [self dismissViewControllerAnimated:YES completion:nil];
}
-(void)centerLayout{
    CGFloat tabX = 0;
    CGFloat tabY = 60;
    CGFloat tabW = self.view.frame.size.width;
    CGFloat tabH = self.view.frame.size.height-60;
    _tabV = [[UITableView alloc]initWithFrame:CGRectMake(tabX, tabY, tabW, tabH) style:UITableViewStylePlain];
    _tabV.dataSource = self;
    _tabV.delegate = self;
    [self.view addSubview:_tabV];
}
-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    return _tabV.frame.size.height/9;
}

-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    CGFloat searchX = 10;
    CGFloat searchY = _tabV.frame.size.height/45;
    CGFloat searchW = _tabV.frame.size.width-20;
    CGFloat searchH = _tabV.frame.size.height*0.6;
    search = [[UISearchBar alloc]init];
    search.frame = CGRectMake(searchX, searchY, searchW, searchH);
    search.placeholder = @"请输入名称进行查找";
    return search;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return [_arr count];
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger row = [indexPath row];
    // 列宽
    CGFloat contentWidth = self.tabV.frame.size.width;
   
    //该行要显示的内容
    NSString *content = [_arr objectAtIndex:row];
    // 计算出显示完内容需要的最小尺寸
    NSDictionary *attribute = @{NSFontAttributeName:[UIFont systemFontOfSize:14]};
    CGSize size = [content boundingRectWithSize:CGSizeMake(contentWidth, 1000.0f) options:NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesLineFragmentOrigin | NSStringDrawingUsesFontLeading attributes:attribute context:nil].size;
    
    // 这里返回需要的高度
    return size.height+20;
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    NSInteger row = [indexPath row];
    if (cell == nil) {
        //用何种字体进行显示
        UIFont *font = [UIFont systemFontOfSize:14];
        // 该行要显示的内容
        NSString *content = [_arr objectAtIndex:row];
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:@"cell"];
        // 设置显示文字
        cell.textLabel.text = content;
        // 设置自动换行(重要)
        cell.textLabel.numberOfLines = 0;
        // 设置显示字体(一定要和之前计算时显示的字体一致)
        cell.textLabel.font = font;
    }
   
    return cell;
}
-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
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
