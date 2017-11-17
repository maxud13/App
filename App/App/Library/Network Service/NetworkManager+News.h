//
//  NetworkManager+News.h
//  App
//
//  Created by maxud on 17.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "NetworkManager.h"
#import "GlobalConstsnts.h"

@interface NetworkManager (News)

+(void)getNewsWithSuccess:(Success)success andFailure:(Failure)filure;

@end
