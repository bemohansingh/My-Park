//
//  NameListViewController.h
//  appStruct
//
//  Created by Developer8 on 3/22/16.
//  Copyright © 2016 Mohan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import"Autocomplete.h"
@interface NameListViewController : UIViewController<UITableViewDelegate,UITableViewDataSource>{
    NSMutableArray *nameList;
}
@property (strong, nonatomic) IBOutlet UITableView *tableViewList;

@end
