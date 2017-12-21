//
//  AccountCell.m
//  G3AlarmSystem
//
//  Created by apple on 12-5-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "AccountCell.h"

@implementation AccountCell

@synthesize cellBGImageView;
@synthesize cellSelBGImageView;
@synthesize hostNameLabel;


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
    [self.hostNameLabel release];
    [super dealloc];
}

- (void) setCellType:(ListCellType) cellType
{
    
    if (!SYSTEMVersion) {
        NSString *bgImageFileName;
        NSString *selbgImageFileName;
        
        switch (cellType)
        {
            case LCT_ONE:
                bgImageFileName = @"3-list-bg";
                selbgImageFileName = @"3_listbg_choose";
                break;
                
            case LCT_First:
                bgImageFileName = @"3_listbg1";
                selbgImageFileName = @"3_listbg1_choose";
                break;
                
            case LCT_Mid:
                bgImageFileName = @"3_listbg2";
                selbgImageFileName = @"3_listbg2_choose";
                break;
                
            case LCT_Last:
                bgImageFileName = @"3_listbg3";
                selbgImageFileName = @"3_listbg3_choose";
                break;
                
            default:
                break;
        }
        
        [Utility updateImageViewForImageView:cellBGImageView srcName:bgImageFileName];
        
        [Utility updateImageViewForImageView:cellSelBGImageView srcName:selbgImageFileName];
    }
   

}

@end
