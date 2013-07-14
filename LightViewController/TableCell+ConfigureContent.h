//
//  TableCell+ConfigureContent.h
//  LightViewController
//
//  Created by mulp on 12/07/13.
//  Copyright (c) 2013 mulp. All rights reserved.
//

#import "TableCell.h"

@class DataSourceItem;

@interface TableCell (ConfigureContent)

-(void) configureCellContent:(DataSourceItem*) content;
@end
