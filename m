From: beolach@comcast.net
Subject: Re: X not starting at all
Date: Fri, 16 Jan 2004 06:09:08 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <011620040609.16915.134a@comcast.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: gracecott@sancharnet.in
Cc: linux-newbie@vger.kernel.org

Here are the steps I used to setup X on my computer with a nVidia GeForce4 Ti4200.  You should be able to do exactly the same thing with your card.

1: Run 'xf86config'.  Choose 18 "NVIDIA (generic)" for the card definition.  This generates a good XF86Config file using XFree86's nv driver.  This command will also allow you to specify the resolution(s) X will run at (can be cycled with ctrl-alt-+ & ctrl-alt--).  After doing this, X should work, but without hardware accelerated OpenGL.

2a: These weren't available when I did it, but now you can download the latest nvidia driver already patched to word with 2.6 from:
<http://www.sh.nu/download/nvidia/linux-2.6/NVIDIA-Linux-x86-1.0-5328-pkg0.run>

2b: If you don't trust that file, download nvidia's driver from nvidia's official site, and patch it with the patch from <http://minion.de>.  This is what I did, so I can personally vouch for it; but it's more work.  If you decide you want to do this, follow the instructions on the minion site; I'll outline the other (easier) method.

3: Run the patched installer as root.  It should install everything to the correct locations automatically.

4: Edit /etc/X11/XF86Config-4 (or XF86Config) and change the line that says:
	Driver	"nv"
to
	Driver	"nvidia"

For OpenGL (3D support), make sure that in the module section it has the line:
	Load		"glx"
and does NOT have (or they are commented out):
	Load		"dri"
	Load		"GLcore"

5: Should work.  Try startx now.

GL,
Conway S. Smith
>> [snip]
> 
> Thanks again, the problem was that nvidia_drv.o was not being placed in 
> the right place (/usr/...)
> I had to do a find .|grep nvidia to find the module(buried in the 
> NVIDIA...... installation directory)
> and cp it to the right place <phew>. Now xinit works fine but startx 
> hangs. Also my shiny new 2.6.1 kernel locks hard pretty often
> (considering that my 2.4 kernel never did) Any ideas as to Why???????
> and how do I change the resolution?
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
