//
//  ParallaxCell.m
//  Test1
//
//  Created by Johnson Liu on 2/25/16.
//  Copyright © 2016 Home Office. All rights reserved.
//

#import "ParallaxCell.h"

@implementation ParallaxCell

@synthesize imageView;

- (void)awakeFromNib {
    // Initialization code
}

- (void)cellImage:(UIImage *)image {
    self.imageView.image = image;
}

- (void)offset:(CGPoint)offset {
    self.imageView.frame = CGRectOffset(self.imageView.bounds, offset.x, offset.y);
}

@end

