//
//  NewsModel.h
//  App
//
//  Created by maxud on 14.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NewsModuleProtocol.h"

@interface NewsModel : NSObject <NewsModuleInput>

@property (nonatomic, weak)id <NewsModuleOutput> output;

@end
