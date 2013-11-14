//
//  Mock.h
//  GOGOGOMercado
//
//  Created by RAFAEL BARALDI on 01/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Mock : NSObject

+(NSMutableArray*)buscaMercados;
+(float)calculaDistancia:(float)xa XB:(float)xb YA:(float)ya YB:(float)yb;

@end