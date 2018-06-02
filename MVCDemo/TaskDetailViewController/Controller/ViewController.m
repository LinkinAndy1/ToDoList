//
//  ViewController.m
//  MVCDemo
//
//  Created by yu on 2018/6/2.
//  Copyright © 2018年 yu. All rights reserved.
//

#import "ViewController.h"
#import "TaskDetailView.h"
#import "TaskModel.h"
@interface ViewController ()
@property (nonatomic,strong) UILabel *taskTitleLabel;
@property (nonatomic,strong) TaskDetailView *taskView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    TaskModel *task = [TaskModel getTaskFromDB];
    
    [self addSubviews];
    [self setupSubviewLayout];
    
    [self updateTaskViewWith:task];
}
-(void)updateTaskViewWith:(TaskModel *)task
{
    self.taskView.detailLabel.text = task.detail;
    self.taskTitleLabel.text = task.title;
}
-(void)addSubviews
{
    [self.view addSubview:self.taskTitleLabel];
    [self.view addSubview:self.taskView];
}
-(void)setupSubviewLayout
{
    self.taskTitleLabel.sd_layout
    .topSpaceToView(self.view, 20)
    .widthIs(200)
    .centerXEqualToView(self.view)
    .autoHeightRatio(0);
    
    self.taskView.sd_layout
    .topSpaceToView(self.view, 64)
    .widthIs(SCREEN_WIDTH-20)
    .heightIs(200)
    .centerXEqualToView(self.view);
    [self.taskView setupSubviewLayout];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark getter and setter

-(TaskDetailView *)taskView
{
    if (!_taskView) {
        _taskView = [TaskDetailView new];
    }
    return _taskView;
}
-(UILabel *)taskTitleLabel
{
    if (!_taskTitleLabel) {
        _taskTitleLabel = [UILabel new];
        _taskTitleLabel.textColor = [UIColor blackColor];
        _taskTitleLabel.font = [UIFont systemFontOfSize:24 weight:UIFontWeightBold];
        _taskTitleLabel.textAlignment = NSTextAlignmentCenter;
    }
    return _taskTitleLabel;
}
@end
