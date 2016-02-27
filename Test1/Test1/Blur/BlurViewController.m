//
//  BlurViewController.m
//  Test1
//

#import "BlurViewController.h"
#import "DataSource.h"


@interface BlurViewController ()

@property (strong, nonatomic) NSArray *rowsArray;
@property (assign, nonatomic) int selectedIndex;

@end


@implementation BlurViewController

@synthesize imageView;
@synthesize tableView;
@synthesize rowsArray;
@synthesize selectedIndex;

#pragma mark - init

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Blur";
    
    selectedIndex = -1;
    
    [self showBlur];
    
    DataSource *source = [DataSource new];
    self.rowsArray = [source titlesPlusEntries];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - local methods

- (void)showBlur {
    UIBlurEffect *blurEffect = [UIBlurEffect effectWithStyle:UIBlurEffectStyleLight];
    UIView *blurEffectView = [[UIVisualEffectView alloc] initWithEffect:blurEffect];
    blurEffectView.frame = self.imageView.bounds;
    blurEffectView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    [self.imageView addSubview:blurEffectView];
}

#pragma mark - table view source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return self.rowsArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (selectedIndex == section) {
        NSArray *array = [self.rowsArray objectAtIndex:section];
        return array.count;
    }
    else {
        return 1;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *cellId = @"CellId";
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:cellId];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellId];
    }
    
    cell.backgroundColor = [UIColor clearColor];
    cell.contentView.backgroundColor = [UIColor clearColor];
    
    NSArray *array = [self.rowsArray objectAtIndex:indexPath.section];
    NSString *title = [array objectAtIndex:indexPath.row];
    
    NSString *space = @"";
    cell.accessoryType = UITableViewCellAccessoryNone;
    
    if (selectedIndex == indexPath.section) {
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        if (indexPath.row > 0) space = @"     ";
    }
    cell.textLabel.text = [NSString stringWithFormat:@"%@%@", space, title];
    
    return cell;
}

#pragma mark - table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.row > 0) return;
    
    if (selectedIndex == indexPath.section)
        selectedIndex = -1;
    else
        selectedIndex = (int)indexPath.section;
    
    [self.tableView reloadData];
}


@end

