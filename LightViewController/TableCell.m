//
//  TableCell.m
//  LightViewController
//
//  Created by mulp on 12/07/13.
//  Copyright (c) 2013 mulp. All rights reserved.
//

#import "TableCell.h"

@implementation TableCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.big = [[UILabel alloc] initWithFrame:CGRectZero];
        self.big.font = [UIFont systemFontOfSize:14];
        [self.contentView addSubview:self.big];
        
        self.small = [[UILabel alloc] initWithFrame:CGRectZero];
        self.small.font = [UIFont systemFontOfSize:12];
        [self.contentView addSubview:self.small];
    }
    return self;
}


-(void)layoutSubviews {
    [super layoutSubviews];    
    self.big.frame = CGRectMake(20, 3, 280, 21);
    self.small.frame = CGRectMake(20, 22, 280, 21);
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
