//
//  ViewController.m
//  ChainDemo
//
//  Created by RLY on 2019/4/28.
//  Copyright © 2019 demo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    float result = self.add(2).minus(3).multiply(4).divide(5).getResult;
    NSLog(@"结果 ：%f",result);
}

- (ViewController *(^)(float))add{
    
    __weak typeof (self) wself = self;
    ViewController *(^result)(float) = ^(float value){
        
        wself.tmpResult += value;
        return self;
    };
    return result;
}

-(ViewController *(^)(float))minus{
    
    __weak typeof (self) wself = self;
    ViewController *(^result)(float) = ^(float value){
        
        wself.tmpResult -= value;
        return self;
    };
    return result;
}

-(ViewController *(^)(float))multiply{
    
    __weak typeof (self) wself = self;
    ViewController *(^result)(float) = ^(float value){
        
        wself.tmpResult *= value;
        return self;
    };
    return result;
}

-(ViewController *(^)(float))divide{
    
    __weak typeof (self) wself = self;
    ViewController *(^result)(float) = ^(float value){
        
        wself.tmpResult /= value;
        return self;
    };
    return result;
}

-(float)getResult{
    return self.tmpResult;
}

@end
