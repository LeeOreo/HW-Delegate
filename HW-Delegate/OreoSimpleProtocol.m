//
//  OreoSimpleProtocol.m
//  HW-Delegate
//
//  Created by 李育豪 on 2015/4/8.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "OreoSimpleProtocol.h"

@implementation OreoSimpleProtocol

- (void)startProcessWithSecond:(float)second {
    if (self.delegate && [self.delegate respondsToSelector:@selector(picturesShow:)]) {
        
        // http://stackoverflow.com/questions/14924892/nstimer-with-anonymous-function-block
        
        int64_t delayInSeconds = second;
        
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
        
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            
            // Update your label here.
            [self.delegate picturesShow:self];
        });
    }
}

-(void)startSampleProcess{
    if (self.delegate && [self.delegate respondsToSelector:@selector(picturesShow:)]) {
        
        // http://stackoverflow.com/questions/14924892/nstimer-with-anonymous-function-block
        
        int64_t delayInSeconds = 1.0;
        
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInSeconds * NSEC_PER_SEC);
        
        dispatch_after(popTime, dispatch_get_main_queue(), ^(void){
            
            // Update your label here.
            [self.delegate picturesShow:self];
            
        });
    }
}

@end
