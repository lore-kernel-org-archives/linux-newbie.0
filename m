From: joy <gracecott@sancharnet.in>
Subject: Re: switching to debian (... and installing the NVIDIA  GeForce4)
Date: Fri, 26 Mar 2004 16:43:33 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4064105D.60903@sancharnet.in>
References: <405FAC4A.1000609@sancharnet.in>
 <5.1.0.14.1.20040322210149.01fdd960@celine>
 <5.1.0.14.1.20040323094003.01fc9810@celine>
 <5.1.0.14.1.20040324084506.01f89290@celine>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:

>
> Hard to say from this description if you are seeing the problems I 
> read about or not. With a sufficiently fast CPU ... a 3 GHz P4, say 
> ... I could run xine this way using xshm, and that video method is a 
> real CPU hog. A better test would be something like this:
>
> 1. run a single instance of xine in the current display, playing back 
> something suitable (I don't know what "Highway Star" is ... or, more 
> important to the test, how it

It's apparent that you are not a great fan of rock music....;-)

> is encoded (what resolution, what bitrate, what codec)). Make sure 
> xine is using xVideo ("xine -V xv filename_to_play"). Have xine 
> resizing the video ... double size if that works to keep everything 
> actually visible onscreen.

did that..... OK

>
> 2. also in the current display, run "top". With the entire xie 
> playback visible onscreen, note both total CPU use and its components. 
> The total should be quite low, under 5% usually, if all is working 
> smoothly. If the total is high, and both the "system" and "user" 
> components contribute significantly to it, you are seeing the problem 
> I've read about, even if the system is managing to keep up.

in the output of top, I found the xine part of it and it takes up very 
little, around 3-4% max whereas libarts, which I guess is the Kde libs 
takes up 50%(too much, IMHO) so I guess it is mem hogs like KDE that 
constitute the problem......

>
> 3. Mention what CPU -- type and speed -- is involved. The faster the 
> CPU, the lower the number should be in step 2.

Cpu- athlon 2400+
video- geforce4 64 mb ram
512 mb ddr main mem

>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
