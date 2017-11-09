//
//  UIView+SLViewLayer.h
//  xib屏幕适配
//
//  Created by 武传亮 on 2017/11/7.
//  Copyright © 2017年 武传亮. All rights reserved.
//

#import <UIKit/UIKit.h>


IB_DESIGNABLE
@interface UIView (SLViewLayer)


/** 边框宽 */
@property (assign, nonatomic) IBInspectable CGFloat borderWidth;
/** 边框颜色 */
@property (strong, nonatomic) IBInspectable UIColor *borderColor;

/** 圆角 */
@property (assign, nonatomic) IBInspectable CGFloat cornerRadius;
/** 是否切掉 */
@property (assign, nonatomic) IBInspectable BOOL masksToBounds;


/** 是否设置成统一背景颜色 */
@property (assign, nonatomic) IBInspectable BOOL sl_backgroundColor;

@end
