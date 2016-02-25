//
//  ViewController.m
//  Test1
//
//  Created by Johnson Liu on 2/25/16.
//  Copyright © 2016 Home Office. All rights reserved.
//

#import "ViewController.h"
#import "BlurViewController.h"
#import "ParallaxViewController.h"


@interface ViewController ()

@property (strong, nonatomic) NSArray *rowsArray;

@end


@implementation ViewController

@synthesize tableView;
@synthesize rowsArray;

NSString *kCell = @"CellId";

#pragma mark - init

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Home";
    
    self.rowsArray = [NSArray arrayWithObjects:@"Blurred Image", @"Parallax Effect", nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - table view source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.rowsArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:kCell];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:kCell];
    }
    
    cell.textLabel.text = [self.rowsArray objectAtIndex:indexPath.row];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark - table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    switch (indexPath.row) {
        case 0: {
            UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Blur" bundle:nil];
            BlurViewController *blur = (BlurViewController *)[storyboard instantiateViewControllerWithIdentifier:@"blur"];
            [self.navigationController pushViewController:blur animated:YES];
            break;
        }
        case 1: {
            UIStoryboard *storyboard = [UIStoryboard storyboardWithName:@"Parallax" bundle:nil];
            ParallaxViewController *para = (ParallaxViewController *)[storyboard instantiateViewControllerWithIdentifier:@"parallax"];
            [self.navigationController pushViewController:para animated:YES];
            break;
        }
        default:break;
    }
}


@end

