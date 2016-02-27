//
//  ParallaxCell.h
//  Test1
//

#import <UIKit/UIKit.h>

@interface ParallaxCell : UICollectionViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imageView;

- (void)cellImage:(UIImage *)image;
- (void)offset:(CGPoint)offset;

@end

