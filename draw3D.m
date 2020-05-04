function draw3D( img, img1, img2, img3 )
    %function to draw 3D of prostrate gland

    binaryImage = {img, img1, img2, img3};
    
for i = 1:4

% figure(1)
% imshow(binaryImage{i});
% Get coordinates of the boundary of the freehand drawn region.
[structBoundaries,L] = bwboundaries(binaryImage{i},'noholes');

x = [];
y = [];

if (i == 2)
    boundary = structBoundaries{1};
           x = [x; boundary(:,2)];
           y = [y; boundary(:,1)];
else
for k = 1:2
           
           boundary = structBoundaries{k};
           x = [x; boundary(:,2)];
           y = [y; boundary(:,1)];
end
end

for j = 0: 1:100
    z = j*ones(1,length(x));
    figure(2)
    scatter3(y,x,z);
    hold on;
end

hold on;

end

