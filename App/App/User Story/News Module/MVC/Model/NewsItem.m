//
//  NewsItem.m
//  App
//
//  Created by maxud on 20.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "NewsItem.h"

@implementation NewsItem

+(NewsItem*)newsItemFromJson:(NSDictionary*)json
{
    NewsItem *news = [NewsItem new];
    news.author = json[@"author"];
    news.date = json[@"publishedAt"];
    news.source = json[@"source"][@"name"];
    news.textDescription = json[@"description"];
    news.imageURL = json[@"urlToImage"];
    news.title = json[@"title"];
    news.newsURL = json[@"url"];
    
    return news;
}

@end
