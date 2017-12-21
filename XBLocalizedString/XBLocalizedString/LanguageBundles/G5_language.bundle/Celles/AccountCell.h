//
//  AccountCell.h
//  G3AlarmSystem
//
//  Created by apple on 12-5-22.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Utility.h"

@interface AccountCell : UITableViewCell
{
    IBOutlet UIImageView *cellBGImageView;
    IBOutlet UIImageView *cellSelBGImageView; 
    IBOutlet UILabel *hostNameLabel;
}


@property (nonatomic, retain) IBOutlet UIImageView *cellBGImageView;
@property (nonatomic, retain) IBOutlet UIImageView *cellSelBGImageView;
@property (nonatomic, retain) IBOutlet UILabel *hostNameLabel;

- (void) setCellType:(ListCellType) cellType;

@end
