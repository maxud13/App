//
//  NetworkManager.m
//  App
//
//  Created by maxud on 17.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "NetworkManager.h"

@implementation NetworkManager

+(void)sendURLRequest:(NSURLRequest*)request withSuccess:(Success)success andFailure:(Failure)failure

{
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *sessionDataTask = [session dataTaskWithRequest:request completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        
        if (error)
        {
            failure(error);
        }
        else
        {
            NSError *jsonError = nil;
            
            NSDictionary *responseDictionary = [NSJSONSerialization JSONObjectWithData:data options:0 error:&jsonError];
            
            if (jsonError)
            {
                failure(jsonError);
            }
            else
            {
                success(responseDictionary);
            }
        }
        
        
    }];
    [sessionDataTask resume];
}

@end
