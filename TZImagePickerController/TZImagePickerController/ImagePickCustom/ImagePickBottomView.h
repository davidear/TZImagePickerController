//
//  ImagePickBottomView.h
//  MG-ecom
//
//  Created by shudan on 2020/9/1.
//  Copyright © 2020 shudan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ImagePickBottomView : UIView

@property (weak, nonatomic) IBOutlet UILabel *chooseImageCountLabel;
@property (weak, nonatomic) IBOutlet UIButton *sureButton;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *sureButtonHeight;

@end

NS_ASSUME_NONNULL_END
