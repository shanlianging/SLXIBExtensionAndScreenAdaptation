# SLXIBExtensionAndScreenAdaptation
xib的borderWidth的扩展和适配等


利用两个属性（宏）拓展可视化操作

### 1、View的改变
**两个值**
> * IB_DESIGNABLE 设置在自定义位置里，放在最前面，只有集成了自定义View才能在XIB上看到效果。
> * IBInspectable 定义的属性可以在XIB上进行可视化设置


![可视化设置][1]
![可视化实际位置][2]
![可视化效果][3]


*UIView+SLViewLayer.h*

```
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
@property (assign, nonatomic) IBInspectable BOOL sd_backgroundColor;

@end

```

*UIView+SLViewLayer.m*

```
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


- (void)setSd_backgroundColor:(BOOL)sd_backgroundColor {
if (sd_backgroundColor) {
self.backgroundColor = [UIColor redColor];
}
}

- (BOOL)sd_backgroundColor {
return YES;
}

@end
```

### 2、约束的设置

![约束设置][4]



[1]: https://github.com/shanlianging/SLXIBExtensionAndScreenAdaptation/blob/master/image/1.png?raw=true
[2]: https://github.com/shanlianging/SLXIBExtensionAndScreenAdaptation/blob/master/image/2.png?raw=true
[3]: https://github.com/shanlianging/SLXIBExtensionAndScreenAdaptation/blob/master/image/3.png?raw=true
[4]: https://github.com/shanlianging/SLXIBExtensionAndScreenAdaptation/blob/master/image/4.png?raw=true
