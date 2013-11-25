//
//  NavegacionViewController.m
//  EjemploDeNavegacion
//
//  Created by chipont on 16/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import "NavegacionViewController.h"
#import "SigVistaViewController.h"
@interface NavegacionViewController ()
@property (strong, nonatomic) IBOutlet UITextField *texo;

@end

@implementation NavegacionViewController
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"sigVistaConParam"])
    {
         SigVistaViewController *controller =
            [segue destinationViewController];
        [controller setTexto:_texo.text];
    }
}

- (IBAction)enviarTexto:(UIButton *)sender {
    
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
