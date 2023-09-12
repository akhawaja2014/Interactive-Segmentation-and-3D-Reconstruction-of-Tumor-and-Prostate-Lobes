# Semi Automatic Segmentation of Prostate using Active Contour method
 Prostate cancer is most common cancer among men. There has been a lot of
research to detect the cancer at the earliest possible stage. A number of meth-
ods are available and used to detect tumor, but scientific community is always
curious to and a compuationally cheap, reliable, robust and more accurate seg-
mentation of prostate. This project proposes semi automatic segmentation of
different zones of prostate as well as tumor using Active Contour Model. The
project starts with GUI explanation, code structure, brief introduction of Prostate and discusses related biological
pre-requisites to understand the aim of the project. We then describes
active contour model and theory behind to let reader's know how it works.
The algorithm is implemented on MATLAB and an application is created.
## Author 
Arsalan Khawaja is an intern researcher at Endoscopy and Computer Vision Research Group at Clermont-Ferrand, France. His
area of interest is Interactive segmentation of Medical Images, Image registration and Control theory. 
## User Guide
The application was built on MATLAB app designer. It is relatively new
platform and is different from GUIDE. App Designer is an interactive develop-
ment environment for designing an app layout and programming its behavior.
Now lets start with the aplication. When you run the program the following
figure will appear in the screen.

![GitHub Logo](/Report/image1ui.PNG)

To **upload the images**, we use the button Load image folder in yellow colour.
It will load the whole folder of dicom images in our database. Select the database
you want to open. Do not select folder with other formats exept **Dicom**. This
button is not programmed to work for other image types. The purple color but-
tons with next and previous images written on them will navigate you through
different slices / instances of MRI. The data will change accordingly.

![GitHub Logo](/Report/image2.PNG)

To **ananymize the images**, we just click on Anonymize images and save but-
ton. It will automatically create folder if there aint exist any and save images
in it. You can check them by loading anonymized folder. The following figure
will appear:

![GitHub Logo](/Report/image3.PNG)

Anonymized images are saved in a seperate folder in the working
directory, where they can be accessed using Load folder option.

In the same way, we can convert **Dicom to JPEG** and vise versa. The
folder to save these images will be automatically created. The next step is
to go for segmentation. In the segmentation toolbox, Select Active Contour
Segmentation, the following window will prompt to advise you to draw initial
contour / mask.

![GitHub Logo](/Report/image4.PNG)

Now you will see the prompt window asking for the number of iterations.
The default value for no of iterations has been set up to 200. Input the no of
iterations you want, and click OK.

![GitHub Logo](/Report/image5.PNG)

Input parameters are must be positive number. and it should not
be zero.

After no of iterations, a second prompt box will appear asking you for the
smoothness factor. The default value for smoothness factor is 1.5. Please enter
your desired smoothness factor and click OK.

![GitHub Logo](/Report/image6.PNG)

The smoothness factor should be positive number and not be zero.
The default smoothness value is 0 for the 'Chan-Vese' method and 1 for the
'edge' method.

Now, a prompt box will pop us to ask how you want to draw initial contour
for active contour problem. There are three ways, either you select freehand or
circle or rectangle. Select your desired method and draw contour. The desired method of drawing intial contour must be selected.

![GitHub Logo](/Report/image7.PNG)


The contour can be drawn by pressing the left click of mouse and moving.
When you release click that means you are done and contour will close itself.

The blue line is initial contour drawn. It is done to segment peripheral zone.

![GitHub Logo](/Report/image8.PNG)

Now you need to wait sometime, probably 30 seconds to one minute for
algorithm to work. Once it is done the following figure will appear with the
segmented image. If you like the segmented image you can move to click save
the image other wise repeat the process by changing parameters to get the
suitable segmentation.

![GitHub Logo](/Report/image9.PNG)

The segmented image is shown on the User Interface. The white
area indicates the segmentation.

Now click the save button to save the segmented image. Once you click it, the
following figure will prompt asking you to categorize what does the segmented
image refers to. Please select the correct category. It will save image in that
respected folder in segmented images.

The saving category helps in to categerozed images for 3D reconstruction.

![GitHub Logo](/Report/image10.PNG)

The knowlegde of slice / instance is important while saving the segmented
image. It will be used for 3D reconstruction. Conrm the instance no in the
prompt box and click OK.

The default value is taken from current index. You just need to
confirm in most cases, if you dont want to manipulate results.

![GitHub Logo](/Report/image11.PNG)

The area and volume of segmented image is also shown at the bottom of the
window. It is caculated by the product of white pixels in segmented image by
Pixel spacing of dicaom image. The volume of segmented image was calculated
by the product of area calculated by pixel thickness of Dicom image.




## Details
The details, user manual of the software are explained in the project report, which is available.
