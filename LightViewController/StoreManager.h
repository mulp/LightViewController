//
//  StoreManager.h
//  LightViewController
//
//  Created by mulp on 13/07/13.
//  Copyright (c) 2013 mulp. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ISource <NSObject>

-(NSMutableArray*) readFromSource;

@end


@interface StoreManager : NSObject <ISource>

+ (id)sharedManager;

@end
