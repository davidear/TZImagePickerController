//
//  ImageAblumListView.h
//  MG-ecom
//
//  Created by shudan on 2020/9/1.
//  Copyright © 2020 shudan. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef void(^SelectAblumBlock)(NSUInteger index);

@interface ImageAblumListView : UIView

@property (strong, nonatomic) NSArray *ablums;
@property (copy, nonatomic) SelectAblumBlock selectAblumBlock;

@end

NS_ASSUME_NONNULL_END
