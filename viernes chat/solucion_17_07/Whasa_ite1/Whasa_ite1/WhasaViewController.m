//
//  WhasaViewController.m
//  Whasa_ite1
//
//  Created by chipont on 18/07/13.
//  Copyright (c) 2013 corenetworks. All rights reserved.
//

#import "WhasaViewController.h"
#import "WhasaChatViewController.h"

@interface WhasaViewController ()
@property (strong, nonatomic) IBOutlet UITextField *contacto;
@property (strong, nonatomic) IBOutlet UITextField *nick;
@property (strong, nonatomic) IBOutlet UIButton *buscaContacto;

@end

@implementation WhasaViewController

- (IBAction)showPicker:(UIButton *)sender {
    ABPeoplePickerNavigationController *picker =
    [[ABPeoplePickerNavigationController alloc] init];
    picker.peoplePickerDelegate = self;
    
   [self presentViewController:picker animated:YES completion:nil];
}


- (void)peoplePickerNavigationControllerDidCancel:
        (ABPeoplePickerNavigationController *)peoplePicker
{
    [self dismissViewControllerAnimated:YES completion:nil];
}



- (BOOL)peoplePickerNavigationController:
        (ABPeoplePickerNavigationController *)peoplePicker
      shouldContinueAfterSelectingPerson:(ABRecordRef)person
{
    
    _contacto.text = (__bridge_transfer NSString*)
        ABRecordCopyValue(person, kABPersonFirstNameProperty);
    
    _contacto.text = @"prueba_contacto";
    
    [self displayPerson:person];
    
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
    return NO;
}



- (BOOL)peoplePickerNavigationController:
(ABPeoplePickerNavigationController *)peoplePicker
      shouldContinueAfterSelectingPerson:(ABRecordRef)person
                                property:(ABPropertyID)property
                              identifier:(ABMultiValueIdentifier)identifier
{
    return NO;
}



- (void)displayPerson:(ABRecordRef)person
{
    NSString* name = (__bridge_transfer NSString*)ABRecordCopyValue(person,
                                                                    kABPersonFirstNameProperty);
    self.fName.text = name;
    
    NSString* phone = nil;
    ABMultiValueRef phoneNumbers = ABRecordCopyValue(person,
                                                     kABPersonPhoneProperty);
    if (ABMultiValueGetCount(phoneNumbers) > 0) {
        phone = (__bridge_transfer NSString*)
        ABMultiValueCopyValueAtIndex(phoneNumbers, 0);
    } else {
        phone = @"[None]";
    }
    self.phoneNumber.text = phone;
    CFRelease(phoneNumbers);
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated
{
    UIGraphicsBeginImageContext(self.view.frame.size);
    [[UIImage imageNamed:@"fondo1.png"] drawInRect:self.view.bounds];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:image];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"aChat"]){
        WhasaChatViewController *controller = [segue destinationViewController];
        [controller setNick: _nick.text];
        [controller setContacto: _contacto.text];
    }
    if ([[segue identifier] isEqualToString:@"personaChat"]){
        WhasaChatViewController *controller = [segue destinationViewController];
        [controller setNick: @"prueba_nick"];
        [controller setContacto: @"prueba_contacto"];
    }
    
}

- (IBAction)buscarContacto:(UITextField *)sender {
}
@end
