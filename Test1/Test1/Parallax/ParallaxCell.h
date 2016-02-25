//
//  ParallaxCell.h
//  Test1
//
//  Created by Johnson Liu on 2/25/16.
//  Copyright © 2016 Home Office. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParallaxCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (void)cellImage:(UIImage *)image;
- (void)offset:(CGPoint)offset;

@end

