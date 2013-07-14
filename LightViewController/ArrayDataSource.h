//
//  ArrayDataSource.h
//  LightViewController
//
//  Created by mulp on 12/07/13.
//  Copyright (c) 2013 mulp. All rights reserved.
//

#import <Foundation/Foundation.h>

// Defines a configure table view cell block
typedef void (^TableViewCellConfigureBlock)(id cell, id item);

@interface ArrayDataSource : NSObject <UITableViewDataSource>

// Initializes datasource with NSArray of items, a cell identifier, a configure cell block.
- (id)initWithItems:(NSArray *)anItems
     cellIdentifier:(NSString *)aCellIdentifier
 configureCellBlock:(TableViewCellConfigureBlock)aConfigureCellBlock;

// Returns an item at specified index path
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end
