//
//  BIDNameAndColorCell.m
//  Cells
//
//  Created by Chris Arquelada on 5/11/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BIDNameAndColorCell.h"

@implementation BIDNameAndColorCell
{
    //instance variable _ *note
    UILabel *_nameValue;
    UILabel *_colorValue;
    
}


- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

//two setter
-(void)setName:(NSString *)n
{
    if (![ n isEqualToString:_name]){
        _name = [n copy];
        _nameValue.text = _name;
    }
}
-(void)setColor:(NSString *)c
{
    if (![c isEqualToString:_color]){
        _color = [c copy];
        _colorValue.text = _color;
    }
}

@end
