//
//  TaskModel.m
//  MVCDemo
//
//  Created by yu on 2018/6/2.
//  Copyright © 2018年 yu. All rights reserved.
//

#import "TaskModel.h"

@implementation TaskModel
+(TaskModel *)getTaskFromDB
{
    TaskModel *model;
    model = [[TaskModel alloc] init];

    return model;
}
-(instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"默认任务";
        self.detail = @"默认任务描述";
        self.startTimestamp = @"默认时间";
        self.endTimestamp = @"默认时间";
        self.isCompleted = NO;
    }
    return self;
}
@end
