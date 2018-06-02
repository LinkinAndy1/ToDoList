//
//  TaskModel.h
//  MVCDemo
//
//  Created by yu on 2018/6/2.
//  Copyright © 2018年 yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TaskModel : NSObject
@property (nonatomic,strong) NSString *title;
@property (nonatomic,strong) NSString *detail;
@property (nonatomic,strong) NSString *startTimestamp;
@property (nonatomic,strong) NSString *endTimestamp;
@property (nonatomic,assign) BOOL isCompleted;
+(TaskModel *)getTaskFromDB;
@end
