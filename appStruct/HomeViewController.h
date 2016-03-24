//
//  HomeViewController.h
//  appStruct
//
//  Created by Developer8 on 3/22/16.
//  Copyright © 2016 Mohan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Autocomplete.h"
@interface HomeViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UITextFieldDelegate>
{
    NSArray *listName;
    NSUserDefaults *pastSearch;
    NSArray *parkName;
    NSMutableArray *searchLocationName;
    bool isSearch;
}
@property (strong, nonatomic) IBOutlet UITextField *textFieldCityName;
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UITableView *tableViewPark;
- (IBAction)buttonSearch:(id)sender;

@end
