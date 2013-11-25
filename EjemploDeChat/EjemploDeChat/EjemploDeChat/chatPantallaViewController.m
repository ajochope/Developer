//
//  chatPantallaViewController.m
//  EjemploDeChat
//
//  Created by Ajo Chope on 18/07/13.
//  Copyright (c) 2013 ocalles.cam.core.objectiveC. All rights reserved.
//

#import "chatPantallaViewController.h"

@interface chatPantallaViewController ()
@property (strong, nonatomic) IBOutlet UINavigationItem *textoNick;

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
    _textoNick.title = _nickTitulo;
    //
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
