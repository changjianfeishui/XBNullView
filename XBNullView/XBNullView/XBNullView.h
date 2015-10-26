//
//  XBNullView.h
//  XBNullView
//
//  Created by Scarecrow on 15/10/25.
//  Copyright (c) 2015年 XB. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XBNullView : UIView
@property (nonatomic,strong) UIColor *backgroundCorlor; /**< 背景色,默认(238,238,238)  */

@property (nonatomic,strong) UIFont *desTextFont; /**< 提示文字字体,默认15  */

@property (nonatomic,strong) UIColor  *desTextColor; /**< 提示文字颜色,默认lightGray*/


/**
 *
 *  提示图片与父视图centerY的间距,默认为-40,即以父视图中心y方向向上移动40
 */
@property (nonatomic,assign) CGFloat imgCenterYGap;

/**
 *
 *  提示文字到上方图片的间距,默认为20,
 */
@property (nonatomic,assign) CGFloat desToImgGap;


/**
 *
 *  @param image       提示图片
 *  @param description 提示文字
 */
- (instancetype)initNullViewWithFrame:(CGRect)frame andImage:(UIImage *)image andDescription:(NSString *)description;
/**
 *
 *  点击后执行的block回调
 */
@property (nonatomic,copy) void (^nullViewClickedBlock)(XBNullView *nullView);


@end
