//
//  ViewController.m
//  UTIDemo
//
//  Created by 张忠瑞 on 2017/8/4.
//  Copyright © 2017年 张忠瑞. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic ,strong) UIWebView  *mainWebView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor redColor];
    
    _mainWebView = [[UIWebView alloc] initWithFrame:self.view.bounds];
    _mainWebView.scalesPageToFit = YES;//自动对页面进行缩放以适应屏幕
    [_mainWebView setClipsToBounds:YES];//设置为界限
    [_mainWebView setScalesPageToFit:YES];//页面设置为合适

    [self.view addSubview:_mainWebView];

}

- (void)setUpContentWithInfo:(id)info
{
    if([info isKindOfClass:[NSURL class]])
    {
        [_mainWebView loadRequest:[NSURLRequest requestWithURL:info]];
    }
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
