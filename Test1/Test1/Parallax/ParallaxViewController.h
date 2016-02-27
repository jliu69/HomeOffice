//
//  ParallaxViewController.h
//  Test1
//

#import <UIKit/UIKit.h>

@interface ParallaxViewController : UIViewController <UICollectionViewDataSource, UICollectionViewDelegate>

@property (weak, nonatomic) IBOutlet UICollectionView *collectionView;

@end
