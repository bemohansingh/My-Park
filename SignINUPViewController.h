//
//  SignINUPViewController.h
//  appStruct
//
//  Created by Developer8 on 3/24/16.
//  Copyright © 2016 Mohan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SignINUPViewController : UIViewController<UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UIImageView *imageSignSelect;
@property (strong, nonatomic) IBOutlet UIImageView *imageUserProfile;
@property (strong, nonatomic) IBOutlet UIView *signInView;
@property (strong, nonatomic) IBOutlet UIView *signUpView;
@property (strong, nonatomic) IBOutlet UIView *datePickerView;
@property (strong, nonatomic) IBOutlet UIView *navBarView;
@property (strong, nonatomic) IBOutlet UIDatePicker *datePicker;
@property (strong, nonatomic) IBOutlet UITextField *textFieldUserName;
@property (strong, nonatomic) IBOutlet UITextField *textFieldEmail;
@property (strong, nonatomic) IBOutlet UITextField *textFieldBirthdate;
@property (strong, nonatomic) IBOutlet UITextField *textFieldPassword;
@property (strong, nonatomic) IBOutlet UITextField *textFieldSignInPassword;
@property (strong, nonatomic) IBOutlet UITextField *textFieldSignInEmail;

- (IBAction)buttonSignInTapped:(id)sender;
- (IBAction)buttonSignUpConnectTapped:(id)sender;
- (IBAction)buttonSignUpTapped:(id)sender;
- (IBAction)buttonTermAndConditionTapped:(id)sender;
- (IBAction)buttonSignInConnectTapped:(id)sender;
- (IBAction)buttonForgotPasswordTapped:(id)sender;
- (IBAction)buttonDateDoneTapped:(id)sender;
- (IBAction)buttonDateCancelTapped:(id)sender;
- (IBAction)buttonCameraTapped:(id)sender;
- (IBAction)buttonBackArrowTapped:(id)sender;



@end
