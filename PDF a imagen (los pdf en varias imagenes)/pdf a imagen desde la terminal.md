

# How to Convert PDF to Image in Linux Command Line?
Last Updated : 25 Mar, 2021
[https://www.geeksforgeeks.org/how-to-convert-pdf-to-image-in-linux-command-line/](https://www.geeksforgeeks.org/how-to-convert-pdf-to-image-in-linux-command-line/)


Pdftoppm is a tool that converts PDF document files into .PNG format and many other formats. We can use this tool on Linux to convert the PDF into images. It also provides the features like the cropping image, set resolution, and scale, and many more. Now let’s see how to install the pdftoppm

Installation of pdftoppm:
To install the pdftoppm, we need to install the poppler-utils package on the Linux system because the pdftoppm comes with the poppler package. To install the poppler-utils use the following commands:

To install the poppler-utils on debian based system like Ubuntu and kali Linux use the following command:

sudo apt install poppler-utils 
To install the poppler-utils on the RHEL/CentOS & Fedora use the following command:


sudo dnf install poppler-utils  
To install the poppler-utils  on Arch-based OS uses the following command:

sudo pacman -S poppler     
How to Convert PDF to Image in Linux Command Line

Now we have installed the pdftoppm on the system. Now let’s see how to use the pdftoppm

Using the pdftoppm
Now let’s convert the pdf into the images. To convert complete pdf into the images the following is the syntax :

pdftoppm -<image_format> <pdf_filename <image_filenane>
Here in the place of image_format place the format of the image like png  with – and in place of pdf_filename mention the name of pdf and in place of image_filename mention the output filename.

Here is one example of the above command:

pdftoppm -png gfg.pdf  gfg_d
How to Convert PDF to Image in Linux Command Line

We can see in the above image that all pages have the name ends with the page number. This will be automatically done by the pdftoppm.

Range of PDF pages into the images:
Now let’s see how to convert the range of the PDF pages into the images. To do that the following is the syntax of the command:


pdftoppm -<image_format> -f N -l N <pdf_filename> <image_name>
Here, -f denote the first and N denote the page number, and -l denotes the last and N to the page number. Here is one example of the above command:

 pdftoppm -png -f 5 -l 10 gfg.pdf  gfg_d
How to Convert PDF to Image in Linux Command Line

We can see in the above image output the specified section of PDF is converted into the .pdf format image.

Converting a Single page into the image
To convert the specific one page into the image we can modify the above command like we will keep the both -f and -l number same as of the page to be converted into the image like

pdftoppm -png -f 3 -l 3 gfg.pdf  gfg_d
To convert the first page into the image we can modify the above command as follows:

pdftoppm -png -f 1 -l 1 pdf_name.pdf image_name.png
Then the only first page will be converted into an image like:

How to Convert PDF to Image in Linux Command Line

Monochrome and Grayscale image output:
We can generate the images of pdf in grayscale and monochrome by using just simple command:

For grayscale image:

pdftoppm -png -gray pdf_name.pdf image_name         
For monochrome image:

pdftoppm -png -mono pdf_name.pdf image_name 
Here is an example of the above command:

How to Convert PDF to Image in Linux Command Line

Adjust the DPI Quality of the output image
Now let’s see how to adjust the DPI Quality of the output image. By default, the  DPI quality of the output image is 150, but we can change it. To change the DPI quality we can use the -rx option to specify the X resolution and -ry option to specify the Y resolution of DPI.

pdftoppm -png -rx 350 -ry 350 
To know more about the pdftoppm you can see the man page or use the help command 

pdftoppm --help 
or

man pdftoppm 



# file-converter
Convert between various file formats

file-converter allows you to easily convert various Image, Audio, Video and PDF
formats.

Features:
• Supports batch conversion of multiple files
• File Drag N Drop functionality
• Common runtime dependencies - works on almost any Linux distro
• Completion progress bar

file-converter can convert:
• PDF: to jpg, png, tiff
• Images: jpg, png, tiff, bmp, heic
• Audio: aiff aiffc au amr-nb amr-wb cdda flac gsm mp3 ogg opus and more
• Video: 3g2 3gp asf avi m4v mkv mov mp4 nsv rm roq vob webm

# pdftricks
Simply and efficiently manipulate PDF files