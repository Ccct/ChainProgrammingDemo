//
//  ViewController.h
//  ChainDemo
//
//  Created by RLY on 2019/4/28.
//  Copyright © 2019 demo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, assign) float tmpResult;

-(ViewController *(^)(float))add;

-(ViewController *(^)(float))minus;

-(ViewController *(^)(float))multiply;

-(ViewController *(^)(float))divide;

-(float)getResult;

@end

