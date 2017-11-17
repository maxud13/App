//
//  NetworkManager.h
//  App
//
//  Created by maxud on 17.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "GlobalConstsnts.h"

@interface NetworkManager : NSObject

+(void)sendURLRequest:(NSURLRequest*)request withSuccess:(Success)success andFailure:(Failure)failure;




@end
