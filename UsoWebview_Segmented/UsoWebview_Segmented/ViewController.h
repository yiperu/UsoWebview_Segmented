//
//  ViewController.h
//  UsoWebview_Segmented
//
//  Created by Henry AT on 9/29/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISegmentedControl *escogerColor;
@property (strong, nonatomic) IBOutlet UIWebView *vistaFlor;
@property (strong, nonatomic) IBOutlet UIWebView *vistaDetalleFlor;


- (IBAction)palancaDetalleFlor:(id)sender;


- (IBAction)obtenerFlor:(id)sender;




@end
