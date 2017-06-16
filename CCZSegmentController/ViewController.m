//
//  ViewController.m
//  CCZSegmentController
//
//  Created by 金峰 on 2016/12/15.
//  Copyright © 2016年 金峰. All rights reserved.
//

/// 如果要取到各个ViewController的tableView，只有等到他们全部这个view加载完后才行
/// 测试发现viewDidLoad()调用在addSubView: addChildViewController之前
/// 检测tableView的contentOffset
/// 每个tableView都注册了观察者
/// 在极限位置经常出现滑不动的情况
/// 如何在手指不移开的情况下，把存在于父视图的手势传递到子视图上去
/// 为每一个添加的字控制器添加头文件

#import "ViewController.h"
#import "FirstViewController.h"
#import "SecondViewController.h"
#import "CCZSegmentController.h"
#import "ThirdViewController.h"

@interface ViewController ()
@property (nonatomic, strong) CCZSegmentController *c;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor blackColor];
    self.navigationController.navigationBar.translucent = NO;

    FirstViewController *f = [[FirstViewController alloc] init];

    
    SecondViewController *s = [[SecondViewController alloc] init];
    FirstViewController *f1 = [[FirstViewController alloc] init];
    SecondViewController *s1 = [[SecondViewController alloc] init];
    
    FirstViewController *f2 = [[FirstViewController alloc] init];
    SecondViewController *s2 = [[SecondViewController alloc] init];
    
    FirstViewController *f3 = [[FirstViewController alloc] init];
    SecondViewController *s3 = [[SecondViewController alloc] init];
    
    FirstViewController *f4 = [[FirstViewController alloc] init];
    SecondViewController *s4 = [[SecondViewController alloc] init];
    
    FirstViewController *f5 = [[FirstViewController alloc] init];
    SecondViewController *s5 = [[SecondViewController alloc] init];
    
    NSMutableArray *vcs1 = [NSMutableArray arrayWithCapacity:12];
    for (int i = 0; i < 12; i++) {
        ThirdViewController *third = [[ThirdViewController alloc] init];
        [vcs1 addObject:third];
    }
    
    NSArray *vcs2 = @[f,s,f1,s1,f2,s2,f3,s3,f4,s4,f5,s5];
    //
    CCZSegmentController *segment = [[CCZSegmentController alloc] initWithFrame:self.view.bounds titles:@[@"热门",@"游戏直播",@"天天向上",@"天气",@"我的天这是复哈风",@"新闻",@"直播",@"哈哈哈哈哈",@"Top10",@"新闻",@"直播",@"Top10"]];
    self.c = segment;
    segment.segmentView.backgroundImage = [UIImage imageNamed:@"rem_effect"];
    segment.segmentView.showSeparateLine = YES;
    segment.segmentView.segmentTintColor = [UIColor redColor];
    segment.viewControllers = [vcs2 copy];
    [segment enumerateBadges:@[@(1),@100,@1600,@87,@10,@87,@16,@87,@10,@87,@16,@87]];
    [self addSegmentController:segment];
    [segment setSelectedAtIndex:3];
    


}


@end
