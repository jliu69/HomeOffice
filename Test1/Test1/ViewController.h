//
//  ViewController.h
//  Test1
//
//  Created by Johnson Liu on 2/25/16.
//  Copyright © 2016 Home Office. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

