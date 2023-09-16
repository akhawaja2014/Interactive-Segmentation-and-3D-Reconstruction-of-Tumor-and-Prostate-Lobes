# Semi Automatic Segmentation of Prostate using Active Contour method
 Prostate cancer is the most common cancer among men. There has been a lot of
research to detect cancer at the earliest possible stage. A number of meth-
ods are available and used to detect tumors, but the scientific community is always
curious to find a computationally cheap, reliable, robust, and more accurate seg-
mentation of prostate. This project proposes semi-automatic segmentation of
different zones of the prostate as well as tumor using the Active Contour Model. The
project starts with a GUI explanation, code structure, and brief introduction of Prostate and discusses related biological
prerequisites to understand the aim of the project. We then describe
the active contour model and the theory behind it to let readers know how it works.
The algorithm is implemented on MATLAB and an application is created.

## Author 
Arsalan Khawaja is currently a joint PhD Student at NTNU, Norway, and the University of Burgundy, France. His past experience includes intern researcher at the Endoscopy and Computer Vision (EnCoV) Research Group at Clermont-Ferrand, France, and as a Research Assistant at the Institute of Space Technology, Islamabad. His
area of interest is Interactive Machine Learning, Image registration, Reflectance Transformation Imaging, and Control theory.
Currently, he is working on developing Optimization Algorithms for Reflectance Transformation Imaging. 

## User Guide
The application was built on MATLAB app designer. It is a relatively new
platform and is different from GUIDE. App Designer is an interactive development-
ment environment for designing an app layout and programming its behavior.
Now let's start with the application. When you run the program the following
figure will appear on the screen.

![GitHub Logo](/Report/image1ui.PNG)

To **upload the images**, we use the button Load image folder in yellow color.
It will load the whole folder of Dicom images in our database. Select the database
you want to open. Do not select the folder with other formats except **Dicom**. This
button is not programmed to work for other image types. The purple color but-
tons with the next and previous images written on them will navigate you through
different slices/instances of MRI. The data will change accordingly.

![GitHub Logo](/Report/image2.PNG)

To **anonymize the images**, we just click on Anonymize images and save but-
ton. It will automatically create a folder if none exists there and save images
in it. You can check them by loading an anonymized folder. The following figure
will appear:

![GitHub Logo](/Report/image3.PNG)

Anonymized images are saved in a separate folder in the working
directory, where they can be accessed using the Load folder option.

In the same way, we can convert **Dicom to JPEG** and vice versa. The
folder to save these images will be automatically created. The next step is
to go for segmentation. In the segmentation toolbox, Select Active Contour
Segmentation, the following window will prompt you to advise you to draw the initial
contour/mask.

![GitHub Logo](/Report/image4.PNG)

Now you will see the prompt window asking for the number of iterations.
The default value for no of iterations has been set up to 200. Input the no of
iterations you want, and click OK.

![GitHub Logo](/Report/image5.PNG)

Input parameters must be positive integer numbers. and it should not
be zero.

After the number of iterations, a second prompt box will appear asking you for the
smoothness factor. The default value for the smoothness factor is 1.5. Please enter
your desired smoothness factor and click OK.

![GitHub Logo](/Report/image6.PNG)

The smoothness factor should be a positive number and not zero.
The default smoothness value is 0 for the 'Chan-Vese' method and 1 for the
'edge' method.

Now, a prompt box will pop up to ask how you want to draw the initial contour
for the active contour problem. There are three ways, either you select a freehand, 
circle, or rectangle. Select your desired method and draw a contour. The desired method of drawing initial contour must be selected.

![GitHub Logo](/Report/image7.PNG)


The contour can be drawn by pressing the left click of the mouse and moving.
When you release a click that means you are done and the contour will close itself.

The blue line is the initial contour drawn. It is done to segment the peripheral zone.

![GitHub Logo](/Report/image8.PNG)

Now you need to wait some time, probably 30 seconds to one minute for
the algorithm to work. Once it is done the following figure will appear with the
segmented image. If you like the segmented image you can move to click save
the image; otherwise, repeat the process by changing parameters to get the
suitable segmentation.

![GitHub Logo](/Report/image9.PNG)

The segmented image is shown on the User Interface. The white
area indicates the segmentation.

Now click the save button to save the segmented image. Once you click it, the
following figure will prompt asking you to categorize what the segmented
image refers to. Please select the correct category. It will save images in that
respected folder in segmented images.

The saving category helps to categorize images for 3D reconstruction.

![GitHub Logo](/Report/image10.PNG)

The knowledge of slice/instance is important while saving the segmented
image. It will be used for 3D reconstruction. Confirm the instance no in the
prompt box and click OK.

The default value is taken from the current index. You just need to
confirm in most cases, if you don't want to manipulate results.

![GitHub Logo](/Report/image11.PNG)

The area and volume of the segmented image are also shown at the bottom of the
window. It is calculated by the product of white pixels in a segmented image by
Pixel spacing of Dicom image. The volume of the segmented image was calculated
by the product of area calculated by the pixel thickness of the Dicom image.




## Details
The details, and user manual of the software are explained in the project report, which is available.
