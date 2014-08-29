//
//  MYViewController.m
//  HelloWorld
//
//  Created by Max Rogers on 8/26/14.
//
//

#import "MYViewController.h"

@interface MYViewController ()
@property (nonatomic, weak) IBOutlet UILabel *messageLabel;
@property (nonatomic, weak) IBOutlet UITextField *inputField;
@end

@implementation MYViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)Enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Max";
    NSString *message;
    if ([yourName length] == 0){
        yourName = @"World";
    }
    if ([yourName isEqualToString:myName]){
        message = [NSString stringWithFormat:@"Hello %@ We have the same name.", yourName];
    }else{
        message = [NSString stringWithFormat:@"Hello %@",yourName];
    }
    self.messageLabel.text = message;
}

@end
