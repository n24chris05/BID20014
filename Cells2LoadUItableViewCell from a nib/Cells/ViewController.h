//
//  ViewController.h
//  Cells
//
//  Created by Chris Arquelada on 5/11/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITabBarDelegate>

@property (copy, nonatomic) NSArray *computers;

@end
