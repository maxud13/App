//
//  NewsModel.m
//  App
//
//  Created by maxud on 14.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "NewsModel.h"
#import "NetworkManager+News.h"
#import "NewsItem.h"


@interface NewsModel()

@property(nonatomic, strong)NSMutableArray *newsArray;

@end

@implementation NewsModel

-(NSMutableArray*)newsArray
{
    if (!_newsArray)
    {
        _newsArray = [NSMutableArray new];
    }
    return _newsArray;
}

-(NSInteger)newsCount
{
    return self.newsArray.count;
}

-(id)newsObjectAtindex:(NSInteger)index
{
    return [self.newsArray objectAtIndex:index];
}

-(void)dataNeedsToReload
{
    [NetworkManager getNewsWithSuccess:^(id object)
    {
        NSDictionary *dict = (NSDictionary*)object;
        NSArray *articles = dict[@"articles"];
        [self saveArticles:articles];
        [self.output dataDidReload];
    }
     andFailure:^(NSError *error)
    {
        
    }];
}

-(void)saveArticles:(NSArray*)articles
{
    [self.newsArray removeAllObjects];
    for (NSInteger i=0; i < articles.count; i++)
    {
        NSDictionary *json = articles[i];
        NewsItem *news = [NewsItem newsItemFromJson:json];
        [self.newsArray addObject:news];
    }
}


@end
