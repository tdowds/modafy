//
//  ModLoginViewController.m
//  modafy
//
//  Created by Trevor Dowds on 7/21/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import "ModLoginViewController.h"
#import <BuiltIO/BuiltIO.h>
#import <QuartzCore/QuartzCore.h>

@interface ModLoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (strong, nonatomic) IBOutlet UIButton *loginButton;
@property (weak, nonatomic) IBOutlet UIButton *signUpButton;

@end

@implementation ModLoginViewController

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
    _loginButton.layer.cornerRadius = 7;
    _signUpButton.layer.cornerRadius = 7;

       // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)login:(id)sender {
    BuiltUser *user = [BuiltUser user];
    [user loginWithEmail:self.emailField.text andPassword:self.passwordField.text OnSuccess:^{
        [self performSegueWithIdentifier:@"loginSuccessful" sender:self];
    } onError:^(NSError *error) {
        //make error pop up
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Login Unsuccessful"
            message:@"Please attempt to login again."
            delegate:nil
            cancelButtonTitle:@"OK"
            otherButtonTitles:nil];
        [alert show];
        NSLog(@"login unsuccessful");
    }];
}

- (UIButton *)loginButton {
    _loginButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
       return _loginButton;
}

- (UIButton *)signUpButton {
    _signUpButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    return _signUpButton;
}


@end
