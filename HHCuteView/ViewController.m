//
//  ViewController.m
//  HHCuteView
//
//  Created by VRV2 on 16/5/31.
//  Copyright © 2016年 Hosten. All rights reserved.
//

#import "ViewController.h"
#import "KYCuteView.h"
@interface ViewController ()
@property (strong,nonatomic)KYCuteView *cuteView;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    float percentX = (0.6/3);
    CGFloat x = ceilf(self.view.frame.size.width/2);
    KYCuteView *cuteView = [[KYCuteView alloc]initWithPoint:CGPointMake(x, self.view.frame.size.height/2) superView:self.view];
    self.cuteView = cuteView;
    cuteView.viscosity  = 200;
    cuteView.bubbleWidth = 18;
    cuteView.bubbleHeight = 18;
    cuteView.isSubview = NO;
    cuteView.bubbleColor = [UIColor redColor];
    [cuteView setUp];
    cuteView.bubbleLabel.font = [UIFont systemFontOfSize:12];
    cuteView.frontView.hidden = YES;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
