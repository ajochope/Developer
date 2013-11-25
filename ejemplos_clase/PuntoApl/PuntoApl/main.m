//
//  main.m
//  PuntoApl
//
//  Created by chipont on 08/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PuntoXY.h"
#import "Pixel.h"

int main(int argc, const char * argv[])
{
    @autoreleasepool {       
        PuntoXY *ptoInicial = [[PuntoXY alloc] init];
        [ptoInicial mover:67 :89];
        PuntoXY *ptoFinal = [[PuntoXY alloc] init];
        [ptoFinal mover:120 :160];
        
        NSLog(@"La distancia entre %@ y %@ es %.3f", [ptoInicial pintar], [ptoFinal pintar], [ptoInicial distanciaAPunto:ptoFinal]);

    }
    return 0;
}

