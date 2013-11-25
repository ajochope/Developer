//
//  NavegacionViewController.m
//  EjemploNavegaChat
//
//  Created by Student on 7/17/13.
//  Copyright (c) 2013 Test.cam.core.curso. All rights reserved.
//

#import "NavegacionViewController.h"
#import "chatPantallaViewController.h"
@interface NavegacionViewController ()

@property (strong, nonatomic) IBOutlet UITextField *nick;

@end

@implementation NavegacionViewController

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if([segue.identifier isEqualToString:@"chatPantalla"]){
        // cuidadin con cargar puede ralentizar
        // el rendimiento
        // desde aqui nos tienen que dar la siguiente vista
        chatPantallaViewController *controller =
        [segue destinationViewController];
        
        
        // enviamos el texto que esta en caja de nick
        // a el label de la siguiente pantalla
        [controller setTextoTitulo: _nick.text];
        
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
