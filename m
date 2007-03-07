From: Vishal Soni <vishal.soni@samsung.com>
Subject: Gives Bus errory in memcpy() in coping /dev/fb0 to a file.
Date: Wed, 07 Mar 2007 13:10:25 +0530
Message-ID: <200703071310.25831.vishal.soni@samsung.com>
Reply-To: Vishal Soni <vishal.soni@samsung.com>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="Boundary_(ID_4mF5c1rWGm4dITFWmSG77w)"
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: Linux Newbie <linux-newbie@vger.kernel.org>


--Boundary_(ID_4mF5c1rWGm4dITFWmSG77w)
Content-type: text/plain; charset=us-ascii
Content-transfer-encoding: 7BIT
Content-disposition: inline

hello,

I am trying to get the snapshot of the screen through a c program by mmaping 
the framebuffer device /dev/fb0 .
For this i compiled kernel with virtual framebuffer support and passing  
vga=791 as boot line argument.

Though i am able to get snapshot by
[root@tw pcapp]# cat /dev/fb0 > frame

and see it on the screen by
[root@tw pcapp]# cat frame > /dev/fb0

When i try to capture the frame buffer using the below c code, It gives bus 
error @ memcpy()

Output :::::::::

[root@tw pcapp]# ./pcapp
1024x768, 16bpp
framebuffer device mapped to memory @ 0xb7db3000.
FB_FRAME mapped to memory @ 0xb7c33000.
Bus error
[root@tw pcapp]#



--Boundary_(ID_4mF5c1rWGm4dITFWmSG77w)
Content-type: text/x-csrc; charset=us-ascii; name=pcapp.c
Content-transfer-encoding: 7BIT
Content-disposition: attachment; filename=pcapp.c

#include <unistd.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <linux/fb.h>
#include <sys/mman.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <sys/ioctl.h>
#include <errno.h>
#include <string.h>

#define FB_FILE "/dev/fb0"
#define FB_FRAME "fb_frame"

int main (int argc, char *argv[])
{
	int fdin = -1;
	int fdout = -1;
	char *src = NULL;
	char *dst = NULL;
	struct fb_var_screeninfo vinfo;
	long int screensize = 0;

	if ((fdin = open (FB_FILE, O_RDONLY)) < 0) {
		printf ("Faile to open %s file", FB_FILE);
		return 0;
	}

	/* open/create the output file */
	if ((fdout = open (FB_FRAME, O_RDWR | O_CREAT | O_TRUNC, S_IRWXU)) < 0) {
		printf ("faile to open %s for writing", FB_FRAME);
		return -1;
	}

	// Get variable screen information
	if (ioctl(fdin, FBIOGET_VSCREENINFO, &vinfo)) {
		printf("Error reading variable information.\n");
		return -1;
	}

	printf("%dx%d, %dbpp\n", vinfo.xres, vinfo.yres, vinfo.bits_per_pixel );

	// Calculate the size of the screen in bytes
	screensize = vinfo.xres * vinfo.yres * vinfo.bits_per_pixel / 8;
	
	// Map the device to memory
	src = (char *)mmap(0, screensize, PROT_READ, MAP_SHARED, fdin, 0);
	if ((int)src == -1) {
		printf("Error: failed to map framebuffer device to memory.\n");
		return -1;
	}

	/* mmap the FB_FRAME file */
	dst = mmap (0, screensize, PROT_READ | PROT_WRITE, MAP_PRIVATE, fdout, 0);
	if ((int)dst == -1) {
		printf("FB_FRAME:: mmap error  ");
		return -1;
	}
	
	printf("framebuffer device mapped to memory @ %p.\n", src);
	printf("FB_FRAME mapped to memory @ %p.\n", dst);
	/* copy /dev/fb0 to fb_frame file */
	memcpy (dst, src, screensize);
	close(fdin);
	close(fdout);
	return 0;
} 

--Boundary_(ID_4mF5c1rWGm4dITFWmSG77w)--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
