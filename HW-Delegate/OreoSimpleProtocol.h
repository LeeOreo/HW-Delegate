//
//  OreoSimpleProtocol.h
//  HW-Delegate
//
//  Created by 李育豪 on 2015/4/8.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OreoSimpleProtocol;
@protocol OreoSimpleProtocol <NSObject>
@required
- (void) picturesShow : (OreoSimpleProtocol *)protocol;
@end

@interface OreoSimpleProtocol : NSObject

@property (nonatomic, strong) id delegate;

- (void) startProcessWithSecond:(float)second;

- (void) startSampleProcess; // Instance method

@end
