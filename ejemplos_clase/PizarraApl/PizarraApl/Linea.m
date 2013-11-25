//
//  Linea.m
//  PizarraApl
//
//  Created by chipont on 12/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import "Linea.h"

@implementation Linea

- (NSString *)pintar
{
    return [NSString stringWithFormat:@"Linea: %@-%@",
            [[super getPtoInicial] pintar],
            [[super ptoFinal]pintar]];
}

-(double) calcularArea
{
    return 0;
}
@end
