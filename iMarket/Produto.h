//
//  Produto.h
//  GOGOGOMercado
//
//  Created by RAFAEL BARALDI on 01/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Produto : NSObject

@property float preco;
@property NSString* nome;

-(id)init:(NSString*)nome Preco:(float)preco;

@end
