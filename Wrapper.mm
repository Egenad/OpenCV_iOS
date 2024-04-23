//
//  Wrapper.m
//  OpenCV_iOS
//
//  Created by Angel Terol on 22/4/24.
//

#import "Wrapper.h"
#import <opencv2/opencv.hpp>
 
@implementation Wrapper : NSObject
 
+ (NSString *) openCVVersionString {
return [NSString stringWithFormat:@"OpenCV Version %s",  CV_VERSION];
}
 
@end
