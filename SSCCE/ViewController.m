//
//  ViewController.m
//  SSCCE
//
//  Created by Gabriel Pulido on 10/8/16.
//  Copyright © 2016 Gabriel Pulido. All rights reserved.
//

#import "ViewController.h"
#import "ImageScene.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidLayoutSubviews {
    ImageScene* scene = [[ImageScene alloc] initWithSize:self.view.frame.size];
    scene.scaleMode=SKSceneScaleModeResizeFill;
    [self.spriteKitView presentScene:scene];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
