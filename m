From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: switching to debian (... and installing the NVIDIA GeForce4)
Date: Mon, 22 Mar 2004 21:32:45 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0403221802240.23259-100000@legolas.personal.engin.umich.edu>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I recently installed the 3.0 debian linux (on an AMD 1500 pc) and am
learning the ways of debian packaging. I obtained a netinst iso, burned
the image and successfully rebooted back into debian. Next, I used tasksel
get all the packages that seemed relevant. Somehow I missed choosing
XFree86 (I think), initially. dselect along with the debian reference
manual helped me fix that (by installing x-window-system-core,
xfree86-common, etc). During the setup process I selected GeForce as my
video card. startx did work - XFree86.0.log told me the error was:  (EE)
No devices detected. Googling for "GeForce4 debian configuration" gave me 
hits - the first one indicated that I must:

# cd /usr/src
# apt-get install nvidia-glx-src nvidia-kernel-src
# tar -zxf nvidia-kernel-src.tar.gz
# cd linux
# make-kpkg clean
# make-kpkg modules_image

I do not have the kernel source (I installed a pre-configured kernel -
kernel-image-2.4.18-k7) installed, and therefore do not have a
/usr/src/linux. Must I download the kernel source and follow the
instructions above? Is there an alternative way of enabling this card by
inserting a (precompiled?) module (is the above asking me to do exactly
that?)?

Require guidance...

Thanks,

-K

PS: Must I have my /etc/sources.list updated periodically? Is there a 
utility to have it updated automatically? 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
