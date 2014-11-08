//
//  UITableView.m
//  UIKit
//
//  Created by Nick Bolton on 11/1/14.
//  Copyright (c) 2014 Pixelbleed LLC. All rights reserved.
//

#import "UITableView.h"

@interface UITableView()

@property (nonatomic, readwrite) UITableViewStyle style;

@end

@implementation UITableView

#pragma mark - Init

- (instancetype)initWithFrame:(CGRect)frame style:(UITableViewStyle)style {
    
    self = [super initWithFrame:frame];
    
    if (self != nil) {
        self.style = style;
    }
    
    return self;
}

#pragma mark - Getters and Setters

- (id <UITableViewDataSource>)dataSource {
    return (id)super.dataSource;
}

- (void)setDataSource:(id<UITableViewDataSource>)dataSource {
    super.dataSource = (id)dataSource;
}

- (id <UITableViewDelegate>)delegate {
    return (id)super.delegate;
}

- (void)setDelegate:(id<UITableViewDelegate>)delegate {
    super.delegate = (id)delegate;
}

#pragma mark - Reload

- (void)reloadData {
    
}

- (void)reloadSectionIndexTitles {
    
}

#pragma mark - Info

- (NSInteger)numberOfSections {
    return 1;
}

- (NSInteger)numberOfRowsInSection:(NSInteger)section {
    
}

- (CGRect)rectForSection:(NSInteger)section {
    
}

- (CGRect)rectForHeaderInSection:(NSInteger)section {
    
}

- (CGRect)rectForFooterInSection:(NSInteger)section {
    
}

- (CGRect)rectForRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (NSIndexPath *)indexPathForRowAtPoint:(CGPoint)point {
    
}

- (NSIndexPath *)indexPathForCell:(UITableViewCell *)cell {
    
}

- (NSArray *)indexPathsForRowsInRect:(CGRect)rect {
    
}

- (UITableViewCell *)cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
}

- (NSArray *)visibleCells {
    
}

- (NSArray *)indexPathsForVisibleRows {
    
}

- (UITableViewHeaderFooterView *)headerViewForSection:(NSInteger)section {
    
}

- (UITableViewHeaderFooterView *)footerViewForSection:(NSInteger)section {
    
}

- (void)scrollToRowAtIndexPath:(NSIndexPath *)indexPath atScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated {
}

- (void)scrollToNearestSelectedRowAtScrollPosition:(UITableViewScrollPosition)scrollPosition animated:(BOOL)animated {
    
}

#pragma mark - Row insertion/deletion/reloading.

- (void)beginUpdates {
    
}

- (void)endUpdates {
    
}

- (void)insertSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation {
    
}

- (void)deleteSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation {
    
}

- (void)reloadSections:(NSIndexSet *)sections withRowAnimation:(UITableViewRowAnimation)animation {
    
}

- (void)moveSection:(NSInteger)section toSection:(NSInteger)newSection {
    
}

- (void)insertRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation {
    
}

- (void)deleteRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation {
    
}

- (void)reloadRowsAtIndexPaths:(NSArray *)indexPaths withRowAnimation:(UITableViewRowAnimation)animation {
    
}

- (void)moveRowAtIndexPath:(NSIndexPath *)indexPath toIndexPath:(NSIndexPath *)newIndexPath {
    
}

@end
