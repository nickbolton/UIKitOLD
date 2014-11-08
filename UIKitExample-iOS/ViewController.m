//
//  ViewController.m
//  UIKitExample-iOS
//
//  Created by Nick Bolton on 11/3/14.
//  Copyright (c) 2014 Pixelbleed LLC. All rights reserved.
//

#import "ViewController.h"
#import "Bedrock.h"
#import "TableViewCell.h"
#import "DataModel.h"
#import "PlaceKit.h"

static NSString * const kCellID = @"cell-id";

@interface ViewController () <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation ViewController

#pragma mark - Setup

- (void)setupTableView {
    
    UITableView *tableView = [UITableView new];
    tableView.translatesAutoresizingMaskIntoConstraints = NO;
    tableView.dataSource = self;
    tableView.delegate = self;
    
    [self.view addSubview:tableView];
    
    [NSLayoutConstraint expandToSuperview:tableView];
    
    self.tableView = tableView;
    
    [self.tableView
     registerClass:[TableViewCell class]
     forCellReuseIdentifier:kCellID];
}

- (void)setupDataSource {
}

#pragma mark - View Lifecycle

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setupDataSource];
    [self setupTableView];
    [self.tableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark -
#pragma mark UITableViewDataSource Conformance

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    TableViewCell *cell = (id)[tableView dequeueReusableCellWithIdentifier:kCellID];
    
    return cell;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 100;
}

#pragma mark -
#pragma mark UITableViewDelegate Conformance

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSLog(@"%s", __PRETTY_FUNCTION__);
}

- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)celll forRowAtIndexPath:(NSIndexPath *)indexPath {
 
    TableViewCell *cell = (id)celll;
    
    [PlaceKit placeHipsterIpsumWithNumberOfParagraphs:1 shotOfLatin:NO completion:^(NSString *hipsterIpsum) {
        cell.title = hipsterIpsum;
    }];
    
    [PlaceKit placeKittenImageWithSize:CGSizeMake(30.0f, 30.0f) completion:^(UIImage *kittenImage) {
        cell.leftIcon = kittenImage;
    }];

    [PlaceKit placeKittenImageWithSize:CGSizeMake(20.0f, 20.0f) completion:^(UIImage *kittenImage) {
        cell.rightIcon = kittenImage;
    }];
}

@end
