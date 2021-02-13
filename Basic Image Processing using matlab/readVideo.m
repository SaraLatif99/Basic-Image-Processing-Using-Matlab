clear all;
close all;
clc;
% vision.VideoFileReader('video_path', 'ImageColorSpace','intensity');
object = vision.VideoFileReader ('C:\Users\Sara Latif Khan\OneDrive\Desktop\MatlabForImageProcessing\Images\cars.avi');

%Using info
S = info(object);
frame_rate = S.VideoFrameRate;

%Using Step and isDone

while ~isDone(object)
    
    frame = step(object); %step function will return a single frame upon each execution
    imshow(frame);
    
end

release(object);

    