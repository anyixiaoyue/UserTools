//
//  LLMapView.m
//  tools
//
//  Created by Shawn on 3/3/16.
//  Copyright © 2016 Shawn. All rights reserved.
//

#import "LLMapView.h"
#import <MAMapKit/MAMapKit.h>

@interface LLMapView () <MAMapViewDelegate> {
    
}

@property (strong, nonatomic) MAMapView *mapView;

@property (strong, nonatomic) CLLocation *locationg;

@end

@implementation LLMapView

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    if (!self) {
        return nil;
    }
    
    [MAMapServices sharedServices].apiKey = ApiKey;
    
    _mapView = [[MAMapView alloc]initWithFrame:self.frame];
    
    _mapView.delegate = self;
    
    [self addSubview:_mapView];
//    
//    dispatch_async(dispatch_get_global_queue(0, 0), ^{
//        NSLog(@"global == 1");
//        dispatch_async(dispatch_get_main_queue(), ^{
//            NSLog(@"main == 1");
//        });
//        NSLog(@"2");
//    });
    
    return self;
}

@end
