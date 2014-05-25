//
//  BIDFirstLevelViewController.m
//  Set Nav
//
//  Created by Chris Arquelada on 5/25/14.
//  Copyright (c) 2014 Chris Arquelada. All rights reserved.
//

#import "BIDFirstLevelViewController.h"
#import "BIDSecondLevelController.h"

static NSString* cellIdentifier = @"Cell";

@implementation BIDFirstLevelViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        self.title =@"Fist Level";
        self.controller = @[];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.tableView registerClass:[UITableViewCell class]
           forCellReuseIdentifier:cellIdentifier];
}

#pragma mark - table View data Source
-(NSInteger)numberOfRowsInSection:(UITableView *)tableView
{
//return the number of section;
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.controller count];

}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    //configure the cell
    BIDSecondLevelController *controller = self.controller[indexPath.row];
    cell.textLabel.text = controller.title;
    cell.imageView.image = controller.rowImage;
    
    return cell;
}
#pragma mark -Table view delegate
-(void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath
{
    BIDSecondLevelController *controller = self.controller[indexPath.row];
    [self.navigationController pushViewController:controller animated:YES];
}

@end
