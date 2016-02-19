function ufd_showBoundingBoxes(X,boxes)% function ufd_showBoundingBoxes(X,boxes)
%Show the boxes as red rectangles. Simpler than the result of
%the commands below in Matlab:
red = uint8([255 0 0]);
shapeInserter = vision.ShapeInserter('Shape','Rectangles','BorderColor','Custom', 'CustomBorderColor', red);
faceDetector = vision.CascadeObjectDetector; % faceDetector = vision.CascadeObjectDetector;
I = imread('faces1.jpg');% I = imread('visionteam.jpg');
RGB = repmat(I,[1,1,3]);
bboxes = step(faceDetector, RGB);% bboxes = step(faceDetector, I);
IFaces = insertObjectAnnotation(RGB, shapeInserter, bboxes,'Face');% IFaces = insertObjectAnnotation(I, 'rectangle', bboxes, 'Face');
figure, imshow(IFaces), title('Detected faces');% figure, imshow(IFaces), title('Detected faces');

imshow(X)
%TO DO: show the boxes superimposed to the image
