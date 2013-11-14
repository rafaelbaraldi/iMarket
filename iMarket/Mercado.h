//
//  Mercado.h
//  GOGOGOMercado
//
//  Created by RAFAEL BARALDI on 01/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mercado : NSObject

@property NSString* nome;
@property float estacionamento;
@property float x, y;
@property NSMutableArray* listaDeProdutos;

-(id)init:(NSString*)nome Estacionamento:(float)estacionamento X:(float)x Y:(float)y;

@end
