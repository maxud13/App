//
//  NewsVC.m
//  App
//
//  Created by maxud on 14.11.2017.
//  Copyright © 2017 lesson_1. All rights reserved.
//

#import "NewsVC.h"
#import "NewsModel.h"

@interface NewsVC () <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UITableView *NewsTableView;
@property (nonatomic, strong) NewsModel *model;

@end

@implementation NewsVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.model newsCount];
}
-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    return cell;
}
@end
