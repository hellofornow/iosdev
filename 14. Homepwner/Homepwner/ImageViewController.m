//
//  ImageViewController.m
//  Homepwner
//
//  Created by iadmin on 13-07-29.
//
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController
@synthesize image;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    CGSize sz = [[self image] size];
    [scrollView setContentSize:sz];
    [imageView setFrame:CGRectMake(0, 0, sz.width, sz.height)];
    
    [imageView setImage:[self image]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    scrollView = nil;
    imageView = nil;
    [super viewDidUnload];
}

@end
