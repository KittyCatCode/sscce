//
//  ImageScene.m
//  SSCCE
//
//  Created by Gabriel Pulido on 10/8/16.
//  Copyright © 2016 Gabriel Pulido. All rights reserved.
//

#import "ImageScene.h"
@interface ImageScene ()
@property BOOL hasInit;
@end
@implementation ImageScene
-(void)didMoveToView:(SKView *)view {
    if(!self.hasInit) {
        self.backgroundColor=[UIColor whiteColor];
        self.anchorPoint=CGPointMake(0.5, 0.5);
        //The code for displaying txt1 and txt2 is exactly the same. The img_0002.jpg image is a valid image, as you can see from the imageview below the skview. What am I doing wrong?
        //black
        SKTexture* txt1 = [SKTexture textureWithImageNamed:@"IMG_0002.JPG"];
        SKSpriteNode* node1 = [SKSpriteNode spriteNodeWithTexture:txt1 size:CGSizeMake(txt1.size.width*((self.frame.size.height/2)/txt1.size.height), self.frame.size.height/2)];
        node1.position=CGPointMake(0, self.frame.size.height/4);
        [self addChild:node1];
        //working
        SKTexture* txt2 = [SKTexture textureWithImageNamed:@"gato.jpg"];
        SKSpriteNode* node2 = [SKSpriteNode spriteNodeWithTexture:txt2 size:CGSizeMake(txt2.size.width*((self.frame.size.height/2)/txt2.size.height), self.frame.size.height/2)];
        node2.position=CGPointMake(0, -self.frame.size.height/4);
        [self addChild:node2];
        self.hasInit=YES;
    }
}
@end
