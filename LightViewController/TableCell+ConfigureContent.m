//
//  TableCell+ConfigureContent.m
//  LightViewController
//
//  Created by mulp on 12/07/13.
//  Copyright (c) 2013 mulp. All rights reserved.
//

#import "TableCell+ConfigureContent.h"
#import "DataSourceItem.h"

@implementation TableCell (ConfigureContent)

-(void) configureCellContent:(DataSourceItem*) content {
    self.big.text = content.bigDescription;
    self.small.text = content.smallDescription;
}
@end
