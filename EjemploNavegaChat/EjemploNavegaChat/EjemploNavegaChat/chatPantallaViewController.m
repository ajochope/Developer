//
//  chatPantallaViewController.m
//  EjemploNavegaChat
//
//  Created by Student on 7/17/13.
//  Copyright (c) 2013 Test.cam.core.curso. All rights reserved.
//

#import "chatPantallaViewController.h"

@interface chatPantallaViewController ()
@property (strong, nonatomic) IBOutlet UILabel *textoLabel;

@property (strong, nonatomic) IBOutlet UINavigationItem *textoEnTitulo;

@end

@implementation chatPantallaViewController

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
	// Do any additional setup after loading the view.
    //_textoLabel2.title = _textoTitulo;
    _textoEnTitulo.title = _textoTitulo;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
