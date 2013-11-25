//
//  PointViewController.m
//  PointView
//
//  Created by chipont on 15/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import "PointViewController.h"
#import "PuntoXY.h"

@interface PointViewController ()
@property (strong, nonatomic) IBOutlet
                    UILabel *ptoLbl;

@end
@implementation PointViewController
- (IBAction)moverPunto:(UIButton *)sender {
    UIView *lineaHorizontal =
        [[UIView alloc] initWithFrame:CGRectMake(0, 300,
                        self.view.bounds.size.width,1)];
    lineaHorizontal.backgroundColor = [UIColor blackColor] ;
    
    
//    PuntoXY *pto = [[PuntoXY alloc]init];
    int newX = (int)(arc4random() % (int)self.view.bounds.size.height);
    int newY = (int)(arc4random() % (int)self.view.bounds.size.height);
//    [pto mover:newX :newY];
    PuntoXY *pto = [[PuntoXY alloc] initCoordX:newX yCoordY:newY];

    _ptoLbl.frame = CGRectMake([pto coordX], [pto coordY],
                               _ptoLbl.bounds.size.width,
                               _ptoLbl.bounds.size.height
                               );
    _ptoLbl.text = [pto pintar];
    
    [self.view addSubview:lineaHorizontal];
    
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
