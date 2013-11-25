//
//  NavegaAppViewController.m
//  EjemploDeChat
//
//  Created by Ajo Chope on 18/07/13.
//  Copyright (c) 2013 ocalles.cam.core.objectiveC. All rights reserved.
//

#import "NavegaAppViewController.h"
#import "chatPantallaViewController.h"

@interface NavegaAppViewController ()
@property (strong, nonatomic) IBOutlet UITextField *nick;

@end

@implementation NavegaAppViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"chatPantalla"]){
        
        chatPantallaViewController *controller =
        [segue destinationViewController];
        [controller setNickTitulo:_nick.text];
        
    }
}

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

@end
