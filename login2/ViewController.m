//
//  ViewController.m
//  login2
//
//  Created by White, Jordan on 6/25/14.
//  Copyright (c) 2014 Gannett Digital. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
            
//@property (weak, nonatomic) IBOutlet UIView *view;
//@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    if (![PFUser currentUser]) {
        //create the login view controller
        PFLogInViewController *loginVC = [[PFLogInViewController alloc]init];
        [loginVC setDelegate:self];
        
        //create sign up view controller
        PFSignUpViewController *signupVC = [[PFSignUpViewController alloc]init];
        [signupVC setDelegate:self];
        
        //assign the signup to the login
        [loginVC setSignUpController:signupVC];
        
        //uncomment if you want an animation
        //[self presentViewController:loginVC animated:YES completion:NULL];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//- (IBAction)logoutButton:(id)sender { }

@end
