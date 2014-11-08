//
//  TableViewCell.m
//  UIKit
//
//  Created by Nick Bolton on 11/3/14.
//  Copyright (c) 2014 Pixelbleed LLC. All rights reserved.
//

#import "TableViewCell.h"
#import "Bedrock.h"

@interface TableViewCell()

@property (nonatomic, strong) UILabel *titleLabel;
@property (nonatomic, strong) UIImageView *leftImageView;
@property (nonatomic, strong) UIImageView *rightImageView;
@property (nonatomic, strong) NSLayoutConstraint *leftImageViewWidth;
@property (nonatomic, strong) NSLayoutConstraint *leftImageViewHeight;
@property (nonatomic, strong) NSLayoutConstraint *rightImageViewWidth;
@property (nonatomic, strong) NSLayoutConstraint *rightImageViewHeight;

@end

@implementation TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self.textLabel removeFromSuperview];
        [self.detailTextLabel removeFromSuperview];
        [self setupViews];
    }
    return self;
}

- (void)prepareForReuse {
    [super prepareForReuse];
    self.title = nil;
    self.leftIcon = nil;
    self.rightIcon = nil;
}

#pragma mark - Setup

- (void)setupViews {
    [self setupLeftIconImageView];
    [self setupRightIconImageView];
    [self setupTitleLabel];
}

- (void)setupLeftIconImageView {
    
    UIImageView *imageView = [UIImageView new];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.contentView addSubview:imageView];
    
    [NSLayoutConstraint alignToLeft:imageView withPadding:10.0f];
    [NSLayoutConstraint verticallyCenterView:imageView];
    
    self.leftImageViewWidth =
    [NSLayoutConstraint addWidthConstraint:0.0f toView:imageView];
    
    self.leftImageViewHeight =
    [NSLayoutConstraint addHeightConstraint:0.0f toView:imageView];
    
    self.leftImageView = imageView;
}

- (void)setupRightIconImageView {
    
    UIImageView *imageView = [UIImageView new];
    imageView.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.contentView addSubview:imageView];
    
    [NSLayoutConstraint alignToRight:imageView withPadding:-10.0f];
    [NSLayoutConstraint verticallyCenterView:imageView];

    self.rightImageViewWidth =
    [NSLayoutConstraint addWidthConstraint:0.0f toView:imageView];
    
    self.rightImageViewHeight =
    [NSLayoutConstraint addHeightConstraint:0.0f toView:imageView];

    self.rightImageView = imageView;
}

- (void)setupTitleLabel {
    
    static CGFloat const padding = 10.0f;
    
    UILabel *label = [UILabel new];
    label.translatesAutoresizingMaskIntoConstraints = NO;
    
    [self.contentView addSubview:label];
    
    [NSLayoutConstraint verticallyCenterView:label];
    [NSLayoutConstraint addHeightConstraint:21.0f toView:label];
    
    NSLayoutConstraint *leftSpace =
    [NSLayoutConstraint
     constraintWithItem:label
     attribute:NSLayoutAttributeLeft
     relatedBy:NSLayoutRelationEqual
     toItem:self.leftImageView
     attribute:NSLayoutAttributeRight
     multiplier:1.0f
     constant:padding];
    
    NSLayoutConstraint *rightSpace =
    [NSLayoutConstraint
     constraintWithItem:label
     attribute:NSLayoutAttributeRight
     relatedBy:NSLayoutRelationEqual
     toItem:self.rightImageView
     attribute:NSLayoutAttributeLeft
     multiplier:1.0f
     constant:padding];
    
    [label.superview addConstraint:leftSpace];
    [label.superview addConstraint:rightSpace];

    self.titleLabel = label;
}

#pragma mark - Getters and Setters

- (void)setTitle:(NSString *)title {
    _title = title;
    [self updateTitleLabel];
}

- (void)setLeftIcon:(UIImage *)leftIcon {
    _leftIcon = leftIcon;
    [self updateLeftIcon];
}

- (void)setRightIcon:(UIImage *)rightIcon {
    _rightIcon = rightIcon;
    [self updateRightIcon];
}

#pragma mark - Private

- (void)updateTitleLabel {
    self.titleLabel.text = self.title;
}

- (void)updateLeftIcon {
    self.leftImageView.image = self.leftIcon;
    [self setNeedsUpdateConstraints];
}

- (void)updateRightIcon {
    self.rightImageView.image = self.rightIcon;
    [self setNeedsUpdateConstraints];
}

#pragma mark - Constraints

- (void)updateConstraints {
    [super updateConstraints];
    [self updateLeftIconConstraints];
    [self updateRightIconConstraints];
}

- (void)updateLeftIconConstraints {
    self.leftImageViewWidth.constant = self.leftIcon.size.width;
    self.leftImageViewHeight.constant = self.leftIcon.size.height;
}

- (void)updateRightIconConstraints {
    self.rightImageViewWidth.constant = self.rightIcon.size.width;
    self.rightImageViewHeight.constant = self.rightIcon.size.height;
}

@end
