//
//  ModRegisterViewController.m
//  modafy
//
//  Created by Trevor Dowds on 7/21/14.
//  Copyright (c) 2014 Modafy. All rights reserved.
//

#import <BuiltIO/BuiltIO.h>

#import "ModRegisterViewController.h"

@interface ModRegisterViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UILabel *emailError;
@property (weak, nonatomic) IBOutlet UITextField *passwordField;
@property (weak, nonatomic) IBOutlet UITextField *confirmPasswordField;
@property (weak, nonatomic) IBOutlet UIButton *registerButton;
@end

@implementation ModRegisterViewController

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
    _registerButton.layer.cornerRadius = 7;
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
    // Get the new view controller using [segue
 destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)register:(id)sender {
    BuiltUser *user = [BuiltUser user];
    
    user.email = self.emailField.text;
    user.password = self.passwordField.text;
    user.confirmPassword = self.confirmPasswordField.text;
    
    [user signUpOnSuccess:^{
        NSLog(@"Register successful");
        [self performSegueWithIdentifier:@"SignUpSuccessful" sender:self];
    } onError:^(NSError *error) {
        NSLog(@"Register unsuccessful");
    }];
}

-(UIButton *)registerButton {
    _registerButton = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    return _registerButton;
}


@end
