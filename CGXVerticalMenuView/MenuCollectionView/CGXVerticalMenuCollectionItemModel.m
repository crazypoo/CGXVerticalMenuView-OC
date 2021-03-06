//
//  CGXVerticalMenuCollectionItemModel.m
//  CGXVerticalMenuView-OC
//
//  Created by CGX on 2018/05/01.
//  Copyright © 2019 CGX. All rights reserved.
//

#import "CGXVerticalMenuCollectionItemModel.h"

@implementation CGXVerticalMenuCollectionItemModel
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.rowHeight = 80;
        self.cellClass = [UICollectionViewCell class];
        self.cornerRadius = 8;
        self.borderWidth = 0.5*2;
        self.borderColor = [UIColor colorWithRed:204/255.0 green:204/255.0 blue:204/255.0 alpha:1];
        self.bgColor = [UIColor colorWithWhite:0.93 alpha:1];
    }
    return self;
}

- (NSString *)cellIdentifier
{
    NSAssert(![self.cellClass isKindOfClass:[UICollectionViewCell class]], @"cell必须是UICollectionViewCell类型");
    return [NSString stringWithFormat:@"%@", self.cellClass];
}
@end
