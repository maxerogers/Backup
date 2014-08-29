//
//  MERDetailViewController.h
//  ScaryBugs
//
//  Created by Max Rogers on 8/26/14.
//
//

#import <UIKit/UIKit.h>

@interface MERDetailViewController : UIViewController

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
