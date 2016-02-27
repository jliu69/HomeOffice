//
//  BlurViewController.h
//  Test1
//

#import <UIKit/UIKit.h>

@interface BlurViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end
