//
//  UIView+SLViewLayer.m
//  xib屏幕适配
//
//  Created by 武传亮 on 2017/11/7.
//  Copyright © 2017年 武传亮. All rights reserved.
//

#import "UIView+SLViewLayer.h"

@implementation UIView (SLViewLayer)

- (void)setBorderWidth:(CGFloat)borderWidth {
    if (borderWidth < 0) return;
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}



- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}


- (void)setCornerRadius:(CGFloat)cornerRadius {
    if (cornerRadius < 0) return;
    self.layer.cornerRadius = cornerRadius;
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}


- (void)setMasksToBounds:(BOOL)masksToBounds {
    self.layer.masksToBounds = masksToBounds;
}

- (BOOL)masksToBounds {
    return self.layer.masksToBounds;
}


- (void)setSl_backgroundColor:(BOOL)sl_backgroundColor {
    if (sl_backgroundColor) {
        self.backgroundColor = [UIColor redColor];
    }
}

- (BOOL)sl_backgroundColor {
    return YES;
}

@end
