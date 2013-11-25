//
//  Pizarra.h
//  PizarraApl
//
//  Created by chipont on 12/07/13.
//  Copyright (c) 2013 chipont. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizarra : NSObject

@property(readonly) NSMutableArray *figuras;

- (void) add : (id) figura;
- (void) addFiguras: (NSArray *) figuras;
- (id) getFigura : (int) index;
- (void) limpiar;
- (void) removeFigura : (int) index;
- (int) numeroDeFiguras;

@end
