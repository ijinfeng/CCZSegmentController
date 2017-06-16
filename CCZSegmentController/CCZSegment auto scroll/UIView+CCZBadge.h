//
//  UIView+CCZBadge.h
//  MySegementController
//
//  Created by 金峰 on 2016/12/5.
//  Copyright © 2016年 金峰. All rights reserved.
//

/// 专门是给CCZSegmentController使用的计数类
/// 并不适用于其他场景

#import <UIKit/UIKit.h>

@interface UIView (CCZBadge)
- (void)addNormalBadgeWithBadgeOffsetSize:(CGSize)size;
- (void)addNormalBadgeWithColor:(UIColor *)color borderColor:(UIColor *)bColor badgeOffsetSize:(CGSize)size;

- (void)addNumberBadge:(NSInteger)number badgeOffsetSize:(CGSize)size;
- (void)addNumberBadge:(NSInteger)number badgeOffsetSize:(CGSize)size color:(UIColor *)color borderColor:(UIColor *)bColor;
- (void)addNumber_1;
- (void)reduceNumber_1;

- (void)clearNumberBadge;
@end
