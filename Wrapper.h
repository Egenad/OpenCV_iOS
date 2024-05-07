//
//  Wrapper.h
//  OpenCV_iOS
//
//  Created by Angel Terol on 22/4/24.
//

#ifndef Wrapper_h
#define Wrapper_h

#import <Foundation/Foundation.h>
#import <UIKit/UIImageView.h>
 
@class ViewController;
@interface Wrapper: NSObject
    - (NSString *)openCVVersionString;
    - (id)initWithController:(ViewController*)c andImageView:(UIImageView*)iv;
    - (void)changePause:(bool)state;
    - (void)updateOrientation;
    - (void)setGradient:(int)gr;
    - (void)setBlur:(int)blr;
    - (void)setAngle:(int)agl;
@end

#endif /* Wrapper_h */
