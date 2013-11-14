//
//  Gogogo.m
//  GOGOGOMercado
//
//  Created by RAFAEL BARALDI on 01/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import "Gogogo.h"
#import "Mock.h"
#import "Mercado.h"
#import "Produto.h"

@implementation Gogogo

-(id)init:(float)consumo X:(float)x Y:(float)y{
    self = [super init];
    
    [self setConsumo:consumo];
    [self setX:x];
    [self setY:y];
    [self setPreco:2.5];
    [self setListaDeMercados:([Mock buscaMercados])];
    return self;
}

-(NSString*)comparar:(NSMutableArray*)listaDeCompras{
    NSString* retorno = @"\n\n";
    
    NSString * melhorMercado;
    float melhorPreco = 10000000000000;
    
    
        
        
    for(Mercado* m in [self listaDeMercados]){
        
        int qtdProdutos = 0;
        float precoTotalDoMercado = 0;
        
        for(Produto* p in [m listaDeProdutos]){
            for(NSString* s in listaDeCompras){
                if([[p nome] rangeOfString:s].location != NSNotFound){
                    retorno = [retorno stringByAppendingString:[m nome]];
                    retorno = [retorno stringByAppendingString:@" - "];
                    retorno = [retorno stringByAppendingString:[p nome]];
                    retorno = [retorno stringByAppendingString:@" - "];
                    retorno = [NSString stringWithFormat:@"%@ - R$ %.2f \n",retorno, [p preco]];
                    
                    
                    qtdProdutos++;
                    precoTotalDoMercado = precoTotalDoMercado + [p preco];
                    
                }
            }
        }
        
        float distancia = [Mock calculaDistancia:[self x] XB:[m x] YA:[self y] YB:[m y]];
        retorno = [NSString stringWithFormat:@"%@ Distancia ate o mercado: %.2f Km \n",retorno, distancia];
        float gastosExtra = distancia * [self preco];
        retorno = [NSString stringWithFormat:@"%@ Gasto com gasolina: R$ %.2f \n",retorno, gastosExtra];
        retorno = [NSString stringWithFormat:@"%@ Estacionamento do mercado: R$ %.2f \n",retorno, [m estacionamento]];
        
        precoTotalDoMercado += gastosExtra + [m estacionamento];
        
        retorno = [NSString stringWithFormat:@"%@ Total do mercado: R$ %.2f \n",retorno, precoTotalDoMercado];
        
        
        retorno = [retorno stringByAppendingString:@" \n "];
        
        if (qtdProdutos == [listaDeCompras count]) {
            
            if (precoTotalDoMercado < melhorPreco) {
                melhorPreco = precoTotalDoMercado;
                melhorMercado = [m nome];
            }
        }
        
    }
    
    
    retorno = [retorno stringByAppendingString:@" \n\n "];
    

    retorno = [NSString stringWithFormat:@"%@ Melhor mercado que contem todos os produtos solicitados: %@ \n Preco: R$ %.2f", retorno, melhorMercado, melhorPreco];

        
    
    
    return retorno;
}

@end
