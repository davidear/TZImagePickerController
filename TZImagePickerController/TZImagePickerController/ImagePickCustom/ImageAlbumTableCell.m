//
//  ImageAlbumTableCell.m
//  MG-ecom
//
//  Created by shudan on 2020/9/1.
//  Copyright © 2020 shudan. All rights reserved.
//

#import "ImageAlbumTableCell.h"
#import "TZImageManager.h"

@interface ImageAlbumTableCell ()

@property (weak, nonatomic) IBOutlet UIImageView *ablumImageView;
@property (weak, nonatomic) IBOutlet UILabel *ablumNameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ablumCountLabel;

@end

@implementation ImageAlbumTableCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setModel:(TZAlbumModel *)model {
    _model = model;
    
    self.ablumNameLabel.text = model.name;
    self.ablumCountLabel.text = @(model.count).stringValue;
    [[TZImageManager manager] getPostImageWithAlbumModel:model completion:^(UIImage *postImage) {
        self.ablumImageView.image = postImage;
    }];
}

@end
