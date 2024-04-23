//
//  Wrapper.m
//  OpenCV_iOS
//
//  Created by Angel Terol on 22/4/24.
//

#import "Wrapper.h"
#import <opencv2/opencv.hpp>
#import <opencv2/videoio/cap_ios.h>

@interface Wrapper() <CvVideoCameraDelegate>
{

}
@end

@implementation Wrapper

    {
        ViewController * viewController;
        UIImageView * imageView;
        CvVideoCamera * videoCamera;
    
        cv::Mat grayImage;
        cv::Mat gradX, gradY;
        cv::Mat magnitude, phase;
        
        bool pause;
        int kernelSize;
        int edgeGradient;
        int angleTH;
    }

    - (NSString *) openCVVersionString {
        return [NSString stringWithFormat:@"OpenCV Version %s",  CV_VERSION];
    }

    - (id)initWithController:(ViewController*)c andImageView:(UIImageView*)iv
    {
        
        pause = false;
        kernelSize = 5;
        edgeGradient = 80;
        angleTH = 100;
        
        /*grayImage = cv::Mat();
        gradX = cv::Mat();
        gradY = cv::Mat();
        magnitude = cv::Mat();
        phase = cv::Mat();*/
        
        /*viewController = c;
        imageView = iv;
        videoCamera = [[CvVideoCamera alloc] initWithParentView:imageView];

        videoCamera.delegate = self;
        videoCamera.defaultAVCaptureDevicePosition = AVCaptureDevicePositionBack;
        videoCamera.defaultAVCaptureSessionPreset = AVCaptureSessionPreset640x480;
        videoCamera.defaultAVCaptureVideoOrientation = AVCaptureVideoOrientationLandscapeLeft;
        videoCamera.defaultFPS = 30;
        videoCamera.rotateVideo = !videoCamera.rotateVideo;
        [videoCamera start];*/
        return self;
    }
 
    /*- (void)processImage:(cv::Mat&)image
    {
        
        if(!pause){
            cv::GaussianBlur(image, image, cv::Size(kernelSize, kernelSize), 0, 0);
            cv::cvtColor(image, grayImage, cv::COLOR_RGBA2GRAY);
            
            cv::Sobel(grayImage, gradX, CV_32F, 1, 0);
            cv::Sobel(grayImage, gradY, CV_32F, 0, 1);
            
            cv::cartToPolar(gradX, gradY, magnitude, phase);
            
            cv::Canny(grayImage, image, edgeGradient, angleTH);
            cv::cvtColor(image, image, cv::COLOR_GRAY2RGBA);
        }
    }*/

    - (void)processImage:(cv::Mat &)image {
        if(!pause){
            cv::GaussianBlur(image, image, cv::Size(kernelSize, kernelSize), 0, 0);
        }
    }

@end
