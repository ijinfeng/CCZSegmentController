//
//  CCZSegmentController.h
//  CCZSegmentController
//
//  Created by 金峰 on 2016/12/15.
//  Copyright © 2016年 金峰. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CCZSegmentView.h"
#import "UIView+CCZBadge.h"

NS_ASSUME_NONNULL_BEGIN
@interface CCZSegmentController : UIViewController<UIScrollViewDelegate>

/// initial
+ (__nullable instancetype)segmentControllerWithTitles:(NSArray <NSString *>*)titles;
- (__nullable instancetype)initWithFrame:(CGRect)frame titles:(NSArray *)titles;

@property (nonatomic, strong) NSArray <UIViewController *>*viewControllers;
@property (nonatomic, strong, readonly) CCZSegmentView *segmentView;
@property (nonatomic, strong, readonly) UIViewController *currentViewController;
@property (nonatomic, strong, readonly) UIScrollView *containerView;
@property (nonatomic, readonly) NSUInteger index;
@property (nonatomic, getter=isPagingEnabled) BOOL pagingEnabled;
@property (nonatomic, getter=isBounces) BOOL bounces;

/// index
- (void)selectedAtIndex:(void(^)(NSUInteger index, UIButton *button, UIViewController *viewController))indexBlock;
- (void)setSelectedAtIndex:(NSUInteger)index;

/// number badge
- (void)enumerateBadges:(NSArray <NSNumber *>*)badges;
- (void)reduceCurrentBadgeByNumber_1;
- (void)addCurrentBadgeByNumber_1;
- (void)clearCurrentBadge;
- (void)clearAllBadges;

@end

@interface UIViewController (CCZSegment)

@property (nonatomic, strong, readonly, nullable) CCZSegmentController *segmentController;

- (void)addSegmentController:(CCZSegmentController *)segment;

@end
NS_ASSUME_NONNULL_END
