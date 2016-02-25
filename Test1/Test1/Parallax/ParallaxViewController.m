//
//  ParallaxViewController.m
//  Test1
//
//  Created by Johnson Liu on 2/25/16.
//  Copyright © 2016 Home Office. All rights reserved.
//

#import "ParallaxViewController.h"
#import "ParallaxCell.h"


@interface ParallaxViewController ()

@property (strong, nonatomic) NSArray *imagesArray;

@end


@implementation ParallaxViewController

@synthesize collectionView;
@synthesize imagesArray;

CGFloat imageHeight = 200.0;
CGFloat offsetSpeed = 25.0;

NSString *paraCell = @"CellId";

#pragma mark - init

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"Para";
    
    self.imagesArray = [self allImages];
    [self.collectionView registerNib:[UINib nibWithNibName:@"ParallaxCell" bundle:nil] forCellWithReuseIdentifier:paraCell];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - local

- (NSArray *)allImages {
    
    NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:0];
    
    for (int i=0; i< 15; i++) {
        UIImage *image = [UIImage imageNamed:[NSString stringWithFormat:@"%d@2x", i]];
        [array addObject:image];
    }
    
    return [NSArray arrayWithArray:array];
}

#pragma mark - collection view source

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return self.imagesArray.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    ParallaxCell *cell = [self.collectionView dequeueReusableCellWithReuseIdentifier:paraCell forIndexPath:indexPath];
    
    UIImage *image = [self.imagesArray objectAtIndex:indexPath.row];
    [cell cellImage:image];
    
    return cell;
}

#pragma mark - collection view delegate

- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    
    NSArray *visibleCells = [self.collectionView visibleCells];
    
    for (ParallaxCell *cell in visibleCells) {
        CGFloat yOffset = (self.collectionView.contentOffset.y - cell.frame.origin.y) / imageHeight * offsetSpeed;
        [cell offset:CGPointMake(0.0, yOffset)];
    }
}

@end

