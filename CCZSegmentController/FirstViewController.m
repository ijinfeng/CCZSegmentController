//
//  FirstViewController.m
//  MySegementController
//
//  Created by 金峰 on 16/9/11.
//  Copyright © 2016年 金峰. All rights reserved.
//

#import "FirstViewController.h"
#import "CCZSegmentController.h"

@interface FirstViewController ()<UITableViewDataSource>
@property (nonatomic, strong) UITableView *mainTableView;
@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
//    self.view.backgroundColor = [UIColor redColor];
    
    _mainTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.height - 64 - 44)];
    _mainTableView.dataSource = self;
    _mainTableView.backgroundColor = [UIColor redColor];
    _mainTableView.tableFooterView = [UIView new];
    [self.view addSubview:_mainTableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"1"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:1 reuseIdentifier:@"1"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%ld",indexPath.row];
    return cell;
}

@end
