%# read image
I = imread('./Pic1_3.bmp');

%# Convert to a binary image
BW = im2bw(I, graythresh(I));

%# get object boundaries
BW = imfill(BW,'holes');
B = bwboundaries(BW,'noholes');

%# plot boundaries overlayed on top of image
imshow(I), hold on
for i=1:numel(B)
    plot(B{i}(:,2), B{i}(:,1), 'Color','g', 'LineWidth',2)
end
hold off