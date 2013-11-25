//
//  SigVistaViewController.m
//  EjemploDeNavegacion
//
//  Created by chipont on 16/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import "SigVistaViewController.h"

@interface SigVistaViewController ()
@property (strong, nonatomic) IBOutlet UILabel *lbl;

@end

@implementation SigVistaViewController

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
	_lbl.text = _texto;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
