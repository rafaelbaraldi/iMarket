//
//  ViewController.h
//  iMarket
//
//  Created by RAFAEL BARALDI on 08/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
- (IBAction)btnConsultar_OnClick:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtProduto1;
@property (weak, nonatomic) IBOutlet UITextField *txtProduto2;
@property (weak, nonatomic) IBOutlet UITextField *txtProduto3;
- (IBAction)txtProduto3_OnEndExit:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *scrvwResposta;
@property (weak, nonatomic) IBOutlet UILabel *lblResposta;

@end
