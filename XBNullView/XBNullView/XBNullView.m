//
//  XBNullView.m
//  XBNullView
//
//  Created by Scarecrow on 15/10/25.
//  Copyright (c) 2015年 XB. All rights reserved.
//

#import "XBNullView.h"
@interface XBNullView()
@property (nonatomic,strong) UIImageView *nullImgView;
@property (nonatomic,strong) UILabel *desLabel;

@end
@implementation XBNullView


- (instancetype)initNullViewWithFrame:(CGRect)frame andImage:(UIImage *)image andDescription:(NSString *)description
{
    if (self = [super initWithFrame:frame]) {
        self.nullImgView = [[UIImageView alloc]init];
        self.desLabel = [[UILabel alloc]init];
        self.desLabel.textAlignment = NSTextAlignmentCenter;
        self.desLabel.font = [UIFont systemFontOfSize:15];
        self.desLabel.textColor = [UIColor lightGrayColor];
        self.desToImgGap = 20.f;
        [self addSubview:self.nullImgView];
        [self addSubview:self.desLabel];
        self.backgroundColor = [UIColor colorWithRed:238/255.0 green:238/255.0  blue:238/255.0  alpha:1];
        
        self.nullImgView.image = image;
        self.desLabel.text = description;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap)];
        [self addGestureRecognizer:tap];
        
    }
    return self;
}

- (void)tap
{
    self.nullViewClickedBlock(self);
}

- (void)setDesTextFont:(UIFont *)desTextFont
{
    self.desLabel.font = desTextFont;
}

- (void)setDesTextColor:(UIColor *)desTextColor
{
    self.desLabel.textColor = desTextColor;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    CGFloat imgCenterX = self.center.x;
    CGFloat imgCenterY = self.center.y + self.imgCenterYGap;
    CGFloat imgH = self.nullImgView.image.size.height;
    CGFloat imgW = self.nullImgView.image.size.width;
    self.nullImgView.frame = CGRectMake(0, 0, imgW, imgH);
    self.nullImgView.center = CGPointMake(imgCenterX, imgCenterY);
    self.desLabel.frame = CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, self.desLabel.font.lineHeight);
    self.desLabel.center = CGPointMake(self.center.x, imgCenterY + imgH * 0.5 + self.desToImgGap);
}
@end
