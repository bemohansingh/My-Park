//
//  NameListViewController.m
//  appStruct
//
//  Created by Developer8 on 3/22/16.
//  Copyright © 2016 Mohan. All rights reserved.
//

#import "NameListViewController.h"

@interface NameListViewController ()

@end

@implementation NameListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     nameList =[[NSMutableArray alloc] init];
    
}
-(void)viewWillAppear:(BOOL)animated{
    nameList=[[Autocomplete sharedSingleton] myArray];
    [_tableViewList reloadData];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
     return [nameList count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(cell==nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
    }
    
    
    
    cell.textLabel.text=[nameList objectAtIndex:indexPath.row];
    
    
    return cell;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
