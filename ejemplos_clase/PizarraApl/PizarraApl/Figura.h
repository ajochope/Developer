//
//  Figura.h
//  PizarraApl
//
//  Created by chipont on 12/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PuntoXY.h"
@interface Figura : NSObject

@property(readonly,getter = getPtoInicial) PuntoXY *ptoInicial;
@property(readonly) PuntoXY *ptoFinal;

- (void) mover : (PuntoXY*) ptoInicial y: (PuntoXY*) ptoFinal;

- (NSString *) pintar;

- (double) calcularArea;

@end
