%vision.VideoWriter, info, step, isDone
%VideoWriter,writeVideo

clear all;
close all;
clc;

read_object = vision.VideoFileReader ('C:\Users\Sara Latif Khan\OneDrive\Desktop\MatlabForImageProcessing\Images\cars.avi');

write_object = VideoWriter('C:\Users\Sara Latif Khan\OneDrive\Desktop\MatlabForImageProcessing\Images\cars_copy');

open(write_object);

%Write Object

while ~isDone(read_object)
    
    frame = step(read_object); %step function will return a single frame upon each execution
    writeVideo(write_object,frame);
    
end

close(write_object);
release(read_object);