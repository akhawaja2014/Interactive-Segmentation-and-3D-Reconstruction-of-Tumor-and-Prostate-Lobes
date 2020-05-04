function drawSurface(images)
% this function is used to draw surfaces from slices images

figure(1)
%smooth the slices using gaussian filter
J = smooth3(images,'gaussian',5);

% form isosurface and extract patch
p = patch(isosurface(images,100));

% to find isonormals
isonormals(images,p);

%set the properties of patch and draw it
set(p,'FaceColor','green','EdgeColor','none','FaceAlpha','0.6');
daspect([1 1 1])
view(3); axis normal
camlight
lighting gouraud
