//
//  NewsModuleProtocol.h
//  App
//
//  Created by maxud on 14.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol NewsModuleInput <NSObject>

-(NSInteger)newsCount;
-(id)newsObjectAtindex:(NSInteger)index;
-(void)dataNeedsToReload;


@end

@protocol NewsModuleOutput <NSObject>

-(void)dataDidReload;

@end

