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

@synthesize escogerColor,vistaFlor,vistaDetalleFlor;

- (IBAction)obtenerFlor:(id)sender {

    NSURL *imageURL;
    NSURL *detalleURL;
    NSString *imagenURLString;
    NSString *detalleURLString;
    NSString *color;
    int sessionID;
    
    
    color = [escogerColor titleForSegmentAtIndex:escogerColor.selectedSegmentIndex];
    sessionID = random()%10000;
    
    imagenURLString = [[NSString alloc] initWithFormat:@"http://www.floraphotographs.com/showrandomiphone.php?color=%@&session=%d",color,sessionID];
    detalleURLString = [[NSString alloc] initWithFormat:@"http://www.floraphotographs.com/detailiphone.php?session=%d",sessionID];
    
    imageURL = [[NSURL alloc] initWithString:imagenURLString];
    detalleURL = [[NSURL alloc] initWithString:detalleURLString];    
    
    [vistaFlor loadRequest:[NSURLRequest requestWithURL:imageURL]];
    [vistaDetalleFlor loadRequest:[NSURLRequest requestWithURL:detalleURL]];
    
    vistaDetalleFlor.backgroundColor = [UIColor clearColor];
    
}

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
- (IBAction)palancaDetalleFlor:(UISwitch *)sender {
    vistaDetalleFlor.hidden = ![sender isOn];
    
}


@end
