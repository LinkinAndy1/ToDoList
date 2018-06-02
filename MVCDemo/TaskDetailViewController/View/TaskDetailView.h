//
//  TaskDetailView.h
//  MVCDemo
//
//  Created by yu on 2018/6/2.
//  Copyright © 2018年 yu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TaskDetailView : UIView
@property (nonatomic,strong) UILabel *detailLabel;
@property (nonatomic,strong) UILabel *endTimeLabel;
@property (nonatomic,strong) UISegmentedControl *completedSegmentControl;
-(void)setupSubviewLayout;
@end
