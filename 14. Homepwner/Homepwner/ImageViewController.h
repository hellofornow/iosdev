//
//  ImageViewController.h
//  Homepwner
//
//  Created by iadmin on 13-07-29.
//
//

#import <UIKit/UIKit.h>

@interface ImageViewController : UIViewController
{
    __weak IBOutlet UIScrollView *scrollView;
    __weak IBOutlet UIImageView *imageView;
}

@property (nonatomic, strong) UIImage *image;
@end
