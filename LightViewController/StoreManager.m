//
//  StoreManager.m
//  LightViewController
//
//  Created by mulp on 13/07/13.
//  Copyright (c) 2013 mulp. All rights reserved.
//

#import "StoreManager.h"
#import "DataSourceItem.h"

static const int kNumberOfItems = 50;

@interface StoreManager () 

@property (nonatomic, strong) NSMutableArray *datasource;

@end

@implementation StoreManager

#pragma mark Singleton Methods

+ (id)sharedManager {
    static StoreManager *sharedMyManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedMyManager = [[self alloc] init];
    });
    return sharedMyManager;
}

- (id)init {
    if (self = [super init]) {
        [self readFromSource];
        self.datasource = [NSMutableArray array];
    }
    return self;
}

-(NSMutableArray*) readFromSource {
    for (int i=0; i<kNumberOfItems; i++) {
        DataSourceItem *item = [[DataSourceItem alloc] init];
        item.bigDescription = [@"Lorem Big Description" stringByAppendingFormat:@" %i", i];
        item.smallDescription = [@"Ipsum Small Description" stringByAppendingFormat:@" %i", i];
        [self.datasource addObject:item];
    }
    return self.datasource;
}

@end
