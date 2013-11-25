//
//  Circulo.m
//  PizarraApl
//
//  Created by chipont on 12/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import "Circulo.h"

@implementation Circulo

- (NSString *)pintar
{
    return [NSString stringWithFormat:@"Circulo: %@-%@",
            [[super getPtoInicial] pintar],
            [[super ptoFinal] pintar]];
}

- (double)calcularArea
{
    double radio = [[super getPtoInicial] distanciaAPunto:[super ptoFinal]];
    double a = M_PI * pow((double) radio, (double) 2);
    return a;
}

@end
