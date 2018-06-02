//
//  TaskDetailView.m
//  MVCDemo
//
//  Created by yu on 2018/6/2.
//  Copyright © 2018年 yu. All rights reserved.
//

#import "TaskDetailView.h"
@interface TaskDetailView ()
{
    UILabel *detailTitleLabel;
    UILabel *endTimeTitleLabel;
    UILabel *statusTitleLabel;
}
@end

@implementation TaskDetailView

-(instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    [self setupSubview];
    [self addSubviews];

    
    return self;
}
-(void)setupSubview
{
    detailTitleLabel = [UILabel new];
    detailTitleLabel.text = @"任务描述";
    detailTitleLabel.font = [UIFont systemFontOfSize:24];
    detailTitleLabel.textColor = [UIColor blackColor];
    
    endTimeTitleLabel = [UILabel new];
    endTimeTitleLabel.text = @"截止时间";
    endTimeTitleLabel.font = [UIFont systemFontOfSize:24];
    endTimeTitleLabel.textColor = [UIColor blackColor];
    
    statusTitleLabel = [UILabel new];
    statusTitleLabel.text = @"任务状态";
    statusTitleLabel.font = [UIFont systemFontOfSize:24];
    statusTitleLabel.textColor = [UIColor blackColor];
}
-(void)addSubviews
{
    [self addSubview:detailTitleLabel];
    [self addSubview:endTimeTitleLabel];
    [self addSubview:statusTitleLabel];
    [self addSubview:self.detailLabel];
    [self addSubview:self.endTimeLabel];
    [self addSubview:self.completedSegmentControl];
}
-(void)setupSubviewLayout
{
    detailTitleLabel.sd_layout
    .topSpaceToView(self, 5)
    .leftSpaceToView(self, 5)
    .widthIs(120)
    .heightIs(30);
    
    self.detailLabel.sd_layout
    .topSpaceToView(detailTitleLabel, 10)
    .leftEqualToView(detailTitleLabel)
    .widthIs(self.frame.size.width-10)
    .autoHeightRatio(0);
    
    endTimeTitleLabel.sd_layout
    .topSpaceToView(self.detailLabel, 10)
    .leftEqualToView(detailTitleLabel)
    .widthIs(120)
    .heightIs(30);
    
}

#pragma mark getter setter
-(UILabel *)detailLabel
{
    if (!_detailLabel) {
        _detailLabel = [UILabel new];
        _detailLabel.font = [UIFont systemFontOfSize:15];
        _detailLabel.textColor = [UIColor blackColor];
    }
    
    return _detailLabel;
}
-(UILabel *)endTimeLabel
{
    if (!_endTimeLabel) {
        _endTimeLabel = [UILabel new];
        _endTimeLabel.font = [UIFont systemFontOfSize:15];
        _endTimeLabel.textColor = [UIColor blackColor];
    }
    
    return _endTimeLabel;
}
-(UISegmentedControl *)completedSegmentControl
{
    if (!_completedSegmentControl) {
        _completedSegmentControl = [UISegmentedControl new];
        
    }
    return _completedSegmentControl;
}
@end
