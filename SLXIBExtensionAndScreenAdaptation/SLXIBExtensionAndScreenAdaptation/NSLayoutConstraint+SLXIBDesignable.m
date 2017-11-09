//
//  NSLayoutConstraint+SDXIBDesignable.m
//  xib屏幕适配
//
//  Created by 武传亮 on 2017/11/3.
//  Copyright © 2017年 武传亮. All rights reserved.
//

#import "NSLayoutConstraint+SLXIBDesignable.h"


/* iOS设备 */
#define kDevice_Is_iPhone4s ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 960), [[UIScreen mainScreen] currentMode].size) : NO)
#define kDevice_Is_iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)
#define kDevice_Is_iPhone6 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(750, 1334), [[UIScreen mainScreen] currentMode].size) : NO)
#define kDevice_Is_iPhone6Plus ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1242, 2208), [[UIScreen mainScreen] currentMode].size) : NO)
#define iPhone6PlusBigMode ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2001), [[UIScreen mainScreen]currentMode].size) : NO)
#define kDevice_Is_iPhonex ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(1125, 2436), [[UIScreen mainScreen]currentMode].size) : NO)

//适配参数
#define KSuitParam (kDevice_Is_iPhonex ? 1.0 : (kDevice_Is_iPhone6Plus ? 1.12 : (kDevice_Is_iPhone6 ? 1.0 : (iPhone6PlusBigMode ? 1.01 : 0.85)))) //以6为基准图



@implementation NSLayoutConstraint (SLXIBDesignable)


- (void)setAdapterScreen:(BOOL)adapterScreen {

    if (adapterScreen) {
        self.constant = self.constant * KSuitParam;
        
        
    }
}



- (BOOL)adapterScreen{
    return YES;
}




@end
