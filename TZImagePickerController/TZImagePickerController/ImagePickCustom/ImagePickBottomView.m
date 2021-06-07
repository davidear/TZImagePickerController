//
//  ImagePickBottomView.m
//  MG-ecom
//
//  Created by shudan on 2020/9/1.
//  Copyright © 2020 shudan. All rights reserved.
//

#import "ImagePickBottomView.h"

@implementation ImagePickBottomView

- (void)awakeFromNib {
    [super awakeFromNib];
    
    UIBezierPath* rounded = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:UIRectCornerAllCorners cornerRadii:CGSizeMake(4, 4)];
    CAShapeLayer* shape = [[CAShapeLayer alloc] init];
    shape.frame = self.bounds;
    [shape setPath:rounded.CGPath];
    self.layer.mask = shape;
}

- (void)layoutSubviews {
    [super layoutSubviews];
//    [self.sureButton glViewStartColor:[UIColor yy_colorWithHexString:@"#F7B500"] endColor:[UIColor yy_colorWithHexString:@"#FF7B0C"]];
}

@end
