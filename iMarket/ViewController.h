//
//  ViewController.h
//  iMarket
//
//  Created by RAFAEL BARALDI on 08/11/13.
//  Copyright (c) 2013 RAFAEL BARALDI. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITextFieldDelegate, UIPickerViewDelegate>

@property NSMutableArray* lista;

- (IBAction)btnConsultar_OnClick:(id)sender;
- (IBAction)txtProduto3_OnEndExit:(id)sender;
@property (weak, nonatomic) IBOutlet UIScrollView *scrvwResposta;
@property (weak, nonatomic) IBOutlet UILabel *lblResposta;
@property (weak, nonatomic) IBOutlet UITextField *txtProduto;
- (IBAction)btnAdd_OncClick:(id)sender;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerProdutos;
- (IBAction)btnremove_OnClick:(id)sender;

@end
