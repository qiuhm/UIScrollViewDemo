//
//  txViewController.m
//  UIScrollViewDemo
//
//  Created by tingxuan.qhm on 13-12-1.
//  Copyright (c) 2013年 tingxuan.qhm. All rights reserved.
//

#import "txViewController.h"

@interface txViewController ()

@end

@implementation txViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    UIImageView *imageView = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"scrollView"]];
    UIScrollView * scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 320, 460)];
    scrollView.backgroundColor = [UIColor purpleColor];
    [scrollView addSubview:imageView];
    scrollView.delegate = self;
    scrollView.contentSize = CGSizeMake(320*3, 460*3);
    // 是否反弹
    
    scrollView.bounces = YES;
    
    // 是否分页
    
    scrollView.pagingEnabled = YES;
    
    // 是否滚动
    
    scrollView.scrollEnabled = YES;
    
    scrollView.showsHorizontalScrollIndicator = YES;
    
    // 设置滚动条风格
    
    scrollView.indicatorStyle = UIScrollViewIndicatorStyleBlack;
    
    // 设置内容的边缘和Indicators边缘
    
    scrollView.contentInset = UIEdgeInsetsMake(0, 50, 50, 0);
    
    scrollView.scrollIndicatorInsets = UIEdgeInsetsMake(0, 50, 0, 0);
    [scrollView flashScrollIndicators];
    
    // 是否同时运动,lock
    
    scrollView.directionalLockEnabled = YES;
    
    [self.view addSubview:scrollView];


    
    

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark UIScrollVIewDelegate
/*
 
 // 返回一个放大或者缩小的视图
 
 - (UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView

 {
 
 
 
 }
 
 // 开始放大或者缩小
 
 - (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:
 
 (UIView *)view
 
 {
 
 
 
 }
 
 
 
 // 缩放结束时
 
 - (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(UIView *)view atScale:(float)scale
 
 {

 }

 

 // 视图已经放大或缩小

 - (void)scrollViewDidZoom:(UIScrollView *)scrollView

 {

 NSLog(@"scrollViewDidScrollToTop");

 }

 */



// 是否支持滑动至顶部

- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView

{

    return YES;
  
}

// 滑动到顶部时调用该方法

- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView

{

    NSLog(@"scrollViewDidScrollToTop");
  
}

// scrollView 已经滑动

- (void)scrollViewDidScroll:(UIScrollView *)scrollView

{

    NSLog(@"scrollViewDidScroll");

}

// scrollView 开始拖动

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView

{
  
    NSLog(@"scrollViewWillBeginDragging");

}

// scrollView 结束拖动

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate

{

    NSLog(@"scrollViewDidEndDragging");

}

// scrollView 开始减速（以下两个方法注意与以上两个方法加以区别）

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView

{

    NSLog(@"scrollViewWillBeginDecelerating");

}

// scrollview 减速停止

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView

{

    NSLog(@"scrollViewDidEndDecelerating");

}



@end
