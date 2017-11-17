//
//  NewsModel.m
//  App
//
//  Created by maxud on 14.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "NewsModel.h"
#import "NetworkManager+News.h"


@interface NewsModel()

@property(nonatomic, strong)NSArray *newsArray;

@end

@implementation NewsModel

-(NSInteger)newsCount
{
    return self.newsArray.count;
}

-(id)newsObjectAtindex:(NSInteger)index
{
    return [self.newsArray objectAtIndex:index];
}

@end
