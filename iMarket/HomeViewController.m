//
//  HomeViewController.m
//  iMarket
//
//  Created by RAFAEL BARALDI on 22/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UITabBarItem* item = [self tabBarItem];
        [item setTitle:@"Home"];
        [item setImage:[UIImage imageNamed:@"home"]];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
