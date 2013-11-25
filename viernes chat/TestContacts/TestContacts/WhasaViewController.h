//
//  WhasaViewController.h
//  TestContacts
//
//  Created by chipont on 19/07/13.
//  Copyright (c) 2013 corenetworks. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AddressBook/AddressBook.h>
#import <AddressBookUI/AddressBookUI.h>
@interface WhasaViewController : UIViewController <ABPeoplePickerNavigationControllerDelegate>
@property (weak, nonatomic) IBOutlet UILabel *fName;
@property (weak, nonatomic) IBOutlet UILabel *phoneNumber;



@end
