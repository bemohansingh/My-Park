//
//  HomeViewController.m
//  appStruct
//
//  Created by Developer8 on 3/22/16.
//  Copyright © 2016 Mohan. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
     [self.textFieldCityName addTarget:self action:@selector(didChangeSuburbText:) forControlEvents:UIControlEventEditingChanged];
    _tableViewPark.hidden=true;
    _tableView.hidden=true;
  searchLocationName = [[NSMutableArray alloc] initWithObjects: [[NSUserDefaults standardUserDefaults] valueForKey:@"searchList"],nil];
     parkName =[[NSMutableArray alloc]initWithObjects:@"park1",@"park2",@"park3",@"park4",@"park6", @"park1",@"park2",@"park3",@"park4",@"park6", nil];
   }

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    listName = [[NSArray alloc] initWithArray:[[Autocomplete sharedSingleton] GetSuggestionsForSuburb:self.textFieldCityName.text]];
    _tableView.hidden=false;
    isSearch=false;
    [_tableView reloadData];
}

-(BOOL)textFieldShouldReturn:(UITextField *)textField{
    [_textFieldCityName resignFirstResponder];
    isSearch=false;
    _tableView.hidden=true;
    [_tableView reloadData];
    return true;
}
- (void) didChangeSuburbText: (id) sender{
     _tableView.hidden=false;
    isSearch=false;
    listName = [[NSArray alloc] initWithArray:[[Autocomplete sharedSingleton] GetSuggestionsForSuburb:self.textFieldCityName.text]];
    [_tableView reloadData];
 
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if(tableView.tag==1){
        return [parkName count];
    }
    
    return [listName count];
}
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell =[tableView dequeueReusableCellWithIdentifier:@"Cell"];
    if(cell==nil){
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"Cell"];
    }
    if(tableView.tag==1){
        
        cell.textLabel.text=[parkName objectAtIndex:indexPath.row];
    }
    else
    {
        cell.textLabel.text=[listName objectAtIndex:indexPath.row];
        
    }return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    _textFieldCityName.text=[listName objectAtIndex:indexPath.row];
    _tableView.hidden=true;
    [_tableViewPark reloadData];
}
-(void)viewWillDisappear:(BOOL)animated{
   
//   
//      [[NSUserDefaults standardUserDefaults] setValue:searchLocationName forKey:@"searchList"];
//       [[NSUserDefaults standardUserDefaults] synchronize];

}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonSearch:(id)sender {
    isSearch=true;
    [_textFieldCityName resignFirstResponder];
    _tableViewPark.hidden=false;
   [[Autocomplete sharedSingleton] add:_textFieldCityName.text];
   // [[NSUserDefaults standardUserDefaults] removeObjectForKey:@"searchList"];
  //  [[NSUserDefaults standardUserDefaults] setObject:searchLocationName forKey:@"searchList"];
 //   [[NSUserDefaults standardUserDefaults] synchronize];
  // [searchLocationName addObject:[[NSUserDefaults standardUserDefaults] objectForKey:@"searchList"]];
    [_tableViewPark reloadData];
    _tableView.hidden=YES;
}
@end
