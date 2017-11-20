//
//  NetworkManager+News.m
//  App
//
//  Created by maxud on 17.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "NetworkManager+News.h"

static NSString *const kNewsApiKey = @"02982be0df164f908e987b649b597a57";
static NSString *const kNewsURL = @"https://newsapi.org/v2/top-headlines?sources=bbc-news&apiKey=";


@implementation NetworkManager (News)

+(void)getNewsWithSuccess:(Success)success andFailure:(Failure)filure
{
    NSString *urlString = [NSString stringWithFormat:@"%@%@",kNewsURL, kNewsApiKey];
    NSURL *url = [NSURL URLWithString:urlString];
    
    NSURLRequest *urlRequst = [NSURLRequest requestWithURL:url];
    
    [self sendURLRequest:urlRequst withSuccess:success andFailure:filure];
}


@end
