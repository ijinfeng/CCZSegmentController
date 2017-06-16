# CCZSegmentController
分页控制器

* 如下方法去创建即可
```Objective-C
CCZSegmentController *segment = [[CCZSegmentController alloc] initWithFrame:self.view.bounds titles:@[@"热门",@"游戏直播",@"天天向上",@"天气",@"我的天这是复哈风",@"新闻",@"直播",@"哈哈哈哈哈",@"Top10",@"新闻",@"直播",@"Top10"]];
segment.segmentView.backgroundImage = [UIImage imageNamed:@"rem_effect"];
segment.segmentView.showSeparateLine = YES;
segment.segmentView.segmentTintColor = [UIColor redColor];
segment.viewControllers = [vcs2 copy];
[segment enumerateBadges:@[@(1),@100,@1600,@87,@10,@87,@16,@87,@10,@87,@16,@87]];
[self addSegmentController:segment];
// 设置第三个控制器被选中
[segment setSelectedAtIndex:3];
```
