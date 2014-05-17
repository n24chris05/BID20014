//
//  ViewController.m
//  Cells
//
//  Created by Chris Arquelada on 5/11/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "ViewController.h"
#import "BIDNameAndColorCell.h"

@interface ViewController ()

@end

@implementation ViewController

static NSString *CellTableIdentifier = @"CellTableIdentifier";

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.computers = @[
    @{@"Name" : @"MacBook", @"Color" : @"White"},
    @{@"Name" : @"MacBook Pro", @"Color" : @"Silver"},
    @{@"Name" : @"iMac", @"Color" : @"Silver"},
    @{@"Name" : @"Mac Mini", @"Color" : @"Silver"},
    @{@"Name" : @"Mac Pro", @"Color" : @"Silver"}];
    
    UITableView *tableView = (id)[self.view viewWithTag:1];
    [tableView registerClass:[BIDNameAndColorCell class] forCellReuseIdentifier:CellTableIdentifier];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark -
#pragma mark Table Data Source Method
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.computers count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    BIDNameAndColorCell *cell = [tableView dequeueReusableCellWithIdentifier:CellTableIdentifier];
    
    NSDictionary *rowData = self.computers[indexPath.row];
    
    cell.name = rowData[@"Name"];
    cell.color = rowData [@"Color"];
    
    return cell;

}
@end

