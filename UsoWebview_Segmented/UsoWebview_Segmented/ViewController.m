//
//  ViewController.m
//  UsoWebview_Segmented
//
//  Created by Henry AT on 9/29/13.
//  Copyright (c) 2013 Henry AT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewDidUnload {
    [self setEscogerColor:nil];
    [self setVistaFlor:nil];
    [self setVistaDetalleFlor:nil];
    [super viewDidUnload];
}
- (IBAction)palancaDetalleFlor:(id)sender {
}

- (IBAction)obtenerFlor:(id)sender {
}
@end
