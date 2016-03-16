//
//  ViewController.m
//  tools
//
//  Created by Shawn on 2/6/16.
//  Copyright © 2016 Shawn. All rights reserved.
//

#import "ViewController.h"

#import "LLMapView.h"

@interface ViewController ()
{
//    MAMapView *_mapView;
    
}

@property (strong, nonatomic) NSMutableArray *rememberAry;

@property (strong, nonatomic) LLMapView *mapView;

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    _mapView = [[LLMapView alloc]initWithFrame:self.view.frame];
    
    [self.view addSubview:_mapView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
