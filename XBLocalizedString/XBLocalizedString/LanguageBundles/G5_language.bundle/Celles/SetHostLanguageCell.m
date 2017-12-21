//
//  SetHostLanguageCell.m
//  G3AlarmSystem
//
//  Created by apple on 12-5-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SetHostLanguageCell.h"

@implementation SetHostLanguageCell

@synthesize cellBGImageView;
@synthesize cellSelBGImageView;
@synthesize languageNameLable;
@synthesize checkImage;

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) dealloc
{
    [self.cellBGImageView release];
    [self.cellSelBGImageView release]; 
    [self.languageNameLable release];
    [self.checkImage release];
    [super dealloc];
}

- (void) setCellType:(ListCellType) cellType
{
    NSString *bgImageFileName;
    NSString *selbgImageFileName;
    
    switch (cellType) 
    {
        case LCT_ONE:
            bgImageFileName = @"5-list-1";
            selbgImageFileName = @"5-list-1-click";
            break;
            
        case LCT_First:
            bgImageFileName = @"5-list-1";
            selbgImageFileName = @"5-list-1-click";
            break;
            
        case LCT_Mid:
            bgImageFileName = @"5-list-2";
            selbgImageFileName = @"5-list-2-click";
            break;
            
        case LCT_Last:
            bgImageFileName = @"5-list-3";
            selbgImageFileName = @"5-list-3-click";
            break;
            
        default:
            break;
    }
    
    [Utility updateImageViewForImageView:cellBGImageView srcName:bgImageFileName];
    [Utility updateImageViewForImageView:cellSelBGImageView srcName:selbgImageFileName]; 
}

- (void) setImageChecked:(BOOL) aChecked
{
    checkImage.hidden = !aChecked;
}

@end
