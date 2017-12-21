//
//  SetHostLanguageCell.h
//  G3AlarmSystem
//
//  Created by apple on 12-5-29.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Utility.h"

@interface SetHostLanguageCell : UITableViewCell
{
    IBOutlet UIImageView *cellBGImageView;
    IBOutlet UIImageView *cellSelBGImageView;
    IBOutlet UILabel *languageNameLable;
    IBOutlet UIImageView *checkImage;
}

@property (nonatomic, retain) IBOutlet UIImageView *cellBGImageView;
@property (nonatomic, retain) IBOutlet UIImageView *cellSelBGImageView;
@property (nonatomic, retain) IBOutlet UILabel *languageNameLable;
@property (nonatomic, retain) IBOutlet UIImageView *checkImage;

- (void) setCellType:(ListCellType) cellType;
- (void) setImageChecked:(BOOL) aChecked;

@end
