#include <opencv2/opencv.hpp>
#include <iostream>
#include <math.h>

using namespace cv;
using namespace std;
Mat src, dst, gray_src;
char input_image[] = "input image";
char output_image[] = "output image";

int main(int argc, char ** argv){

    src = imread("1.png");
    if (src.empty()){
        printf("colud not load image ..\n");
        return -1;
    }

    namedWindow(input_image, CV_WINDOW_AUTOSIZE);
    namedWindow(output_image, CV_WINDOW_AUTOSIZE);
    imshow(input_image, src);

    // 二值化
    cvtColor(src, gray_src, COLOR_BGRA2GRAY);
    threshold(gray_src, gray_src, 0, 255, THRESH_OTSU | THRESH_BINARY);
    imshow("threshold image", gray_src);

    // 闭操作连接黑点
    Mat kernel = getStructuringElement(MORPH_RECT, Size(5, 5), Point(-1, -1));
    morphologyEx(gray_src, dst, MORPH_CLOSE, kernel, Point(-1, -1));
    imshow("close image", dst);

    // 闭操作去毛点
    kernel = getStructuringElement(MORPH_RECT, Size(5, 5), Point(-1, -1));
    morphologyEx(dst, dst, MORPH_OPEN, kernel, Point(-1, -1));
    imshow("open image", dst);


    vector <vector<Point>> contours;
    vector<Vec4i> hireachy;

    findContours(dst, contours, hireachy, RETR_TREE, CHAIN_APPROX_SIMPLE, Point());
    
    Mat reslutImage = Mat::zeros(src.size(), CV_8UC3);
    Point cc;
    for (size_t t = 0; t < contours.size(); t++){
        double area = contourArea(contours[t]);
        if (area < 100) continue;

        // 通过宽高比进行过滤
        Rect rect = boundingRect(contours[t]);
        float ratio = float(rect.width) / float(rect.height);

        if (ratio<1.1&&ratio>0.9){
            // -1 填充，1画圆
            drawContours(reslutImage, contours, t, Scalar(0, 0, 255), -1, 8, Mat(), 0, Point());
            
            printf("circle area : %f \n", area);
            printf("circle length: %f \n", arcLength(contours[t], true));
            int x = rect.x + rect.width / 2;
            int y = rect.y + rect.height / 2;
            cc = Point(x, y);
            circle(reslutImage, cc, 2, Scalar(0, 0, 255), 2, 8, 0);
        }
    
    }
    imshow("Reslut", reslutImage);

    Mat circleImage = src.clone();
    //cvtColor(circleImage, circleImage, COLOR_GRAY2BGR);
    circle(circleImage, cc,2, Scalar(0, 0, 255), 2, 8, 0);
    imshow("Final Result", circleImage);

    
    waitKey(0);
    return 0;
}
