From: joy <gracecott@sancharnet.in>
Subject: Re: switching to debian (... and installing the NVIDIA GeForce4)
Date: Tue, 23 Mar 2004 08:47:30 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <405FAC4A.1000609@sancharnet.in>
References: <Pine.LNX.4.44.0403221802240.23259-100000@legolas.personal.engin.umich.edu>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org

Karthik Vishwanath wrote:

>Hello,
>
>I recently installed the 3.0 debian linux (on an AMD 1500 pc) and am
>learning the ways of debian packaging. I obtained a netinst iso, burned
>the image and successfully rebooted back into debian. Next, I used tasksel
>get all the packages that seemed relevant. Somehow I missed choosing
>XFree86 (I think), initially. dselect along with the debian reference
>manual helped me fix that (by installing x-window-system-core,
>xfree86-common, etc). During the setup process I selected GeForce as my
>video card. startx did work - XFree86.0.log told me the error was:  (EE)
>No devices detected. Googling for "GeForce4 debian configuration" gave me 
>hits - the first one indicated that I must:
>  
>
I see that you are using a Geforce 4 in a debian woody system. the 
Xfree86 along with the stable distro does
not support the GF4. so you better get the latest nvidia drivers for 
linux from nvidia.com and install it.
that should( no, will ;-) clear up your problem.

>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>  
>



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
