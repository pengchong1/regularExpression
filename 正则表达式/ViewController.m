//
//  ViewController.m
//  正则表达式
//
//  Created by dc009 on 16/9/14.
//  Copyright © 2016年 彭冲--O(∩_∩)O哈哈哈~. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *lable1;
@property (weak, nonatomic) IBOutlet UILabel *lable2;
@property (weak, nonatomic) IBOutlet UILabel *lable3;

@end

@implementation ViewController
//通过正则表达式可以检测给定的字符串是否符合我们定义的逻辑
//也可以从字符串
- (void)viewDidLoad {
    [super viewDidLoad];
//     //要检测的字符串
//     NSString *phone=@"13a29297883";
//    //定义我们的规则
//    NSString *regex=@"^1[3|4|5|7|8|9][0-9]{9}$";
//    //谓词
//    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex];
//    //判断
////    NSLog(@"%d",[predicate evaluateWithObject:phone]);
//    if ([predicate evaluateWithObject:phone]) {
//        NSLog(@"你的号码有误输入正确");
//    }
//    else{
//        NSLog(@"你的号码有误请核对%@",phone);
//    
//    }

    NSString *tel=@"029-3328181";
    _lable2.text=tel;
    NSString *regex=@"^\\d{3,4}-\\d{7,8}$";
    NSPredicate *predicate=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex];
    
    if ([predicate evaluateWithObject:tel]) {
//                NSLog(@"输入正确");
        _lable3.text=@"输入正确";
            }
            else{
//                NSLog(@"你的号码有误请核对%@",tel);
            
            }
//身份证
    
    NSString *string1=@"61252319911109001X";
    
    NSString *regex1=@"^[1-6]{2}[0-9]{4}[1|2]\\d{4}[0-2][0-3][0-9]{4}[X]$";
    
    NSPredicate *predicate1=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex1];
//    NSLog(@"%d",[predicate1 evaluateWithObject:string1]);
//    邮箱
    
    NSString *string2=@"812371039@qq.com";
     NSString *regex2=@"^[a-zA-Z0-9+-]+[@][a-zA-Z0-9+-]+.com$";
    NSPredicate *predicate2=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex2];
    NSLog(@"%d",[predicate2 evaluateWithObject:string2]);

//    汉子
    
    NSString *string3=@"你好";
    NSString *regex3=@"^[\u4e00-\u9fa5]{0,}$";
    NSPredicate *predicate3=[NSPredicate predicateWithFormat:@"SELF MATCHES%@",regex3];
//    NSLog(@"%d",[predicate3 evaluateWithObject:string3]);

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
