//
//  NewsVC.m
//  App
//
//  Created by maxud on 14.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "NewsVC.h"
#import "NewsModel.h"
#import "NewsModuleProtocol.h"
#import "NewsItem.h"

@interface NewsVC () <UITableViewDelegate, UITableViewDataSource, NewsModuleOutput>

@property (weak, nonatomic) IBOutlet UITableView *NewsTableView;
@property (nonatomic, strong) NewsModel *model;

@end

@implementation NewsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.model = [NewsModel new];
    self.model.output = self;
    [self.model dataNeedsToReload];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.model newsCount];
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    NewsItem *news = [self.model newsObjectAtindex:indexPath.row];
    cell.textLabel.text = news.title;
    
    return cell;
    
}


-(void)dataDidReload
{
    __weak typeof(self)weakSelf = self;
    dispatch_async(dispatch_get_main_queue(), ^{
        [weakSelf.NewsTableView reloadData];
    });
}



@end
