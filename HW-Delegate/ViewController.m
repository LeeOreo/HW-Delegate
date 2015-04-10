//
//  ViewController.m
//  HW-Delegate
//
//  Created by 李育豪 on 2015/4/8.
//  Copyright (c) 2015年 ALPHACamp. All rights reserved.
//

#import "ViewController.h"
#import "OreoSimpleProtocol.h"

@interface ViewController () <OreoSimpleProtocol>

@property (nonatomic, strong) OreoSimpleProtocol *p1;
@property (nonatomic, strong) OreoSimpleProtocol *p2;
@property (nonatomic, strong) OreoSimpleProtocol *p3;
@property (nonatomic, strong) OreoSimpleProtocol *p4;
@property (nonatomic, strong) OreoSimpleProtocol *p5;
@property (nonatomic, strong) OreoSimpleProtocol *p6;
@property (nonatomic, strong) OreoSimpleProtocol *p7;
@property (nonatomic, strong) OreoSimpleProtocol *p8;
@property (nonatomic, strong) OreoSimpleProtocol *p9;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _p1 = [[OreoSimpleProtocol alloc] init];
    _p1.delegate = self;
    [_p1 startProcessWithSecond:7.f];
    
    _p2 = [[OreoSimpleProtocol alloc] init];
    _p2.delegate = self;
    [_p2 startProcessWithSecond:8.f];
    
    _p3 = [[OreoSimpleProtocol alloc] init];
    _p3.delegate = self;
    [_p3 startProcessWithSecond:9.f];
    
    _p4 = [[OreoSimpleProtocol alloc] init];
    _p4.delegate = self;
    [_p4 startProcessWithSecond:6.f];
    
    _p5 = [[OreoSimpleProtocol alloc] init];
    _p5.delegate = self;
    [_p5 startProcessWithSecond:5.f];
    
    _p6 = [[OreoSimpleProtocol alloc] init];
    _p6.delegate = self;
    [_p6 startProcessWithSecond:4.f];
    
    _p7 = [[OreoSimpleProtocol alloc] init];
    _p7.delegate = self;
    [_p7 startSampleProcess];
    
    _p8 = [[OreoSimpleProtocol alloc] init];
    _p8.delegate = self;
    [_p8 startProcessWithSecond:2.f];
    
    _p9 = [[OreoSimpleProtocol alloc] init];
    _p9.delegate = self;
    [_p9 startProcessWithSecond:3.f];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)picturesShow:(OreoSimpleProtocol *)protocol {
    if (protocol == _p1) {
        self.picture1.image = [UIImage imageNamed:@"豆花妹1_01"];
    }

    if (protocol == _p2) {
        self.picture2.image = [UIImage imageNamed:@"豆花妹1_02"];
    }
    
    if (protocol == _p3) {
        self.picture3.image = [UIImage imageNamed:@"Oreo"];
    }

    if (protocol == _p4) {
        self.picture4.image = [UIImage imageNamed:@"豆花妹1_04"];
    }
    
    if (protocol == _p5) {
        self.picture5.image = [UIImage imageNamed:@"豆花妹1_05"];
    }
    
    if (protocol == _p6) {
        self.picture6.image = [UIImage imageNamed:@"豆花妹1_06"];
    }
    
    if (protocol == _p7) {
        self.picture7.image = [UIImage imageNamed:@"豆花妹1_07"];
    }
    
    if (protocol == _p8) {
        self.picture8.image = [UIImage imageNamed:@"豆花妹1_08"];
    }
    
    if (protocol == _p9) {
        self.picture9.image = [UIImage imageNamed:@"豆花妹1_09"];
    }
}

@end
