//
//  SignINUPViewController.m
//  appStruct
//
//  Created by Developer8 on 3/24/16.
//  Copyright © 2016 Mohan. All rights reserved.
//

#import "SignINUPViewController.h"

@interface SignINUPViewController ()

@end

@implementation SignINUPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    _textFieldBirthdate.tag=2003;
    
    
}
-(void)viewWillAppear:(BOOL)animated{
    [UIView animateWithDuration:0.3 animations:^{
        self.datePickerView.center = CGPointMake(self.datePickerView.center.x, self.datePickerView.center.y + self.datePickerView.frame.size.height);
    } completion:^(BOOL finished){
        self.datePickerView.hidden = YES;
    }];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)textFieldDidBeginEditing:(UITextField *)textField{
    if(textField.tag==2003){
        self.datePickerView.hidden = NO;
        [UIView animateWithDuration:0.3 animations:^{
            self.datePickerView.center = CGPointMake(self.datePickerView.center.x, self.datePickerView.center.y - self.datePickerView.frame.size.height);
        }];
    }
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonSignInTapped:(id)sender {
    if(_signInView.isHidden){
        _signInView.hidden=false;
         _signUpView.hidden=true;
        [_imageSignSelect setImage:[UIImage imageNamed:@"SignInSelect"]];
        _navBarView.hidden=true;
    }
}
- (IBAction)buttonSignUpTapped:(id)sender {
    if(_signUpView.isHidden){
        _signUpView.hidden=false;
         _signInView.hidden=true;
        [_imageSignSelect setImage:[UIImage imageNamed:@"SignUpSelect"]];
        _navBarView.hidden=false;
    }
   
}

- (IBAction)buttonTermAndConditionTapped:(id)sender {
    
}

- (IBAction)buttonSignInConnectTapped:(id)sender {
}

- (IBAction)buttonForgotPasswordTapped:(id)sender {
}

- (IBAction)buttonDateDoneTapped:(id)sender {
    _textFieldBirthdate.text= [self formatDate:_datePicker.date];;
    [UIView animateWithDuration:0.3 animations:^{
        self.datePickerView.center = CGPointMake(self.datePickerView.center.x, self.datePickerView.center.y + self.datePickerView.frame.size.height);
    } completion:^(BOOL finished){
        self.datePickerView.hidden = YES;
    }];
}
// Formats the date chosen with the date picker.
- (NSString *)formatDate:(NSDate *)date
{
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateStyle:NSDateFormatterShortStyle];
    [dateFormatter setDateFormat:@"MMMM' 'dd', 'yyyy"];
    NSString *formattedDate = [dateFormatter stringFromDate:date];
    return formattedDate;
}
- (IBAction)buttonDateCancelTapped:(id)sender {
    [UIView animateWithDuration:0.3 animations:^{
        self.datePickerView.center = CGPointMake(self.datePickerView.center.x, self.datePickerView.center.y + self.datePickerView.frame.size.height);
    } completion:^(BOOL finished){
        self.datePickerView.hidden = YES;
    }];
}

- (IBAction)buttonCameraTapped:(id)sender {
   
}
@end
