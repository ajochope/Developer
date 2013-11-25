//
//  PuntoXY.m
//  PuntoApl
//
//  Created by chipont on 10/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import "PuntoXY.h"

@implementation PuntoXY

@synthesize coordX = _coordX, coordY = _coordY;

- (id)initCoordX:(int)xD yCoordY:(int)yD
{
    self = [super init];
    _coordX = xD;
    _coordY = yD;
    return self;
}

- (void) mover:(int)xD :(int)coordY
{
    [self setCoordX : xD];
    _coordY = coordY;
}

- (double) distanciaAPunto:(PuntoXY *)ptoDestino
{
    int distX = (int) pow((double) ([ptoDestino coordX] - [self coordX]), (double)2);
    int distY = (int) pow((double) ([ptoDestino coordY] - [self coordY]), (double)2);
    
    return sqrt(distX + distY);
}

- (NSString *) pintar
{
    return [NSString stringWithFormat:@"[%d,%d]", _coordX, _coordY];
}

- (int) coordX
{
    return _coordX;
}
- (void) setCoordX : (int) xD
{
    if (xD >= 0)
        _coordX = xD;
}

- (int) coordY
{
    return _coordY;
}
- (void) setCoordY : (int) y
{
    if (y >= 0)
        _coordY = y;
}


@end

