//
//  PuntoXY.h
//  PuntoApl
//
//  Created by chipont on 10/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PuntoXY : NSObject


@property int coordX, coordY;

- (id) initCoordX : (int) xD yCoordY: (int) yD;
- (void) mover : (int) xD : (int) yD;
- (NSString *) pintar;
- (double) distanciaAPunto : (PuntoXY *) pto;

@end

