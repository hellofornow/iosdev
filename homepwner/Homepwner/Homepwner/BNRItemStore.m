//
//  BNRItemStore.m
//  Homepwner
//
//  Created by iadmin on 13-07-22.
//  Copyright (c) 2013 amir. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@implementation BNRItemStore

+ (BNRItemStore *)sharedStore
{
    //nil will only be assigned if it doesn't exist (if exists nil won't be assigned)
    static BNRItemStore *sharedStore = nil;
    if (!sharedStore)
        sharedStore = [[super allocWithZone:nil] init];
    
    return sharedStore;
}

+ (id)allocWithZone:(NSZone *)zone
{
    return [self sharedStore];
}

- (id)init
{
    self = [super init];
    if (self) {
        allItems = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSArray *)allItems
{
    return allItems;
}

- (BNRItem *)createItem
{
    BNRItem *p = [BNRItem randomItem];
    [allItems addObject:p];
    
    return p;
}

@end
