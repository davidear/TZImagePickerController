//
//  ImageAblumListView.m
//  MG-ecom
//
//  Created by shudan on 2020/9/1.
//  Copyright © 2020 shudan. All rights reserved.
//

#import "ImageAblumListView.h"
#import "ImageAlbumTableCell.h"

@interface ImageAblumListView () <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *tableHeight;

@end

@implementation ImageAblumListView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    self.clipsToBounds = YES;
    self.tableView.dataSource = self;
    self.tableView.delegate = self;
    [self.tableView registerNib:[UINib nibWithNibName:NSStringFromClass([ImageAlbumTableCell class]) bundle:nil] forCellReuseIdentifier:NSStringFromClass([ImageAlbumTableCell class])];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:NSStringFromClass([UITableViewCell class])];
}

- (void)setFrame:(CGRect)frame {
    [super setFrame:frame];
    self.tableHeight.constant = CGRectGetHeight(self.bounds);
}

#pragma mark - UITableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.ablums.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    ImageAlbumTableCell *cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([ImageAlbumTableCell class]) forIndexPath:indexPath];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    if (cell == nil) {
        cell = [tableView dequeueReusableCellWithIdentifier:NSStringFromClass([UITableViewCell class]) forIndexPath:indexPath];
        return cell;
    }
    if ((indexPath.row >= self.ablums.count)) {
        return cell;
    }
    
    cell.model = [self.ablums objectAtIndex:indexPath.row];
    return cell;
}

#pragma mark - UITableViewDelegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row >= self.ablums.count) {
        return;
    }
    if (self.selectAblumBlock) {
        self.selectAblumBlock(indexPath.row);
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80 + 30; //上下间距15
}

#pragma mark - propties

- (void)setAblums:(NSArray *)ablums {
    _ablums = ablums;
    [self.tableView reloadData];
}

@end
