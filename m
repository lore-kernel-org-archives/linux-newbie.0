From: Ray Olszewski <ray@comarre.com>
Subject: Re: switching to debian (... and installing the NVIDIA 
  GeForce4)
Date: Wed, 24 Mar 2004 08:55:37 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040324084506.01f89290@celine>
References: <405FAC4A.1000609@sancharnet.in>
 <5.1.0.14.1.20040322210149.01fdd960@celine>
 <5.1.0.14.1.20040323094003.01fc9810@celine> <40618A54.5050709@sancharnet.in>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40618A54.5050709@sancharnet.in>
References: <405FAC4A.1000609@sancharnet.in>
 <5.1.0.14.1.20040322210149.01fdd960@celine>
 <5.1.0.14.1.20040323094003.01fc9810@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 06:47 PM 3/24/2004 +0530, joy wrote:
>Ray Olszewski wrote:
>
>>I haven't myself switched to the 2.6.x kernel series yet, but I have seen 
>>reports warning of problems with some external add-in modules, including 
>>the nvidia drivers ... showing up as high CPU loads caused, I think, by 
>>context switching not being handled efficiently. (Also problems with ivtv 
>>and lirc, if memory serves, and maybe some of the wlan stuff.)
>>
>>Caution ... or, better, patience, as this stuff will certainly get worked 
>>out ... *may* be indicated here.
>>
>>Joy - do you actually have an nvidia framebudffer module running with 2.6.x?
>
>yes, have been using the 2.6 series almost as soon as it was released and 
>used to use the patches from minion.de until the
>5336 nvidia driver was released. I don't exactly understand your Q (too 
>hitech for me ;-) however I figure you are asking
>me about it's (kernel's) performance under heavy loads. well I ran 3 
>instances of xine playing (what else) 'Highway Star'
>at the same time on KDE which I think should put the cpu under load, Kde 
>being the major load :) with no problems.
>this was . 2.6.1or .2 maybe...........

Hard to say from this description if you are seeing the problems I read 
about or not. With a sufficiently fast CPU ... a 3 GHz P4, say ... I could 
run xine this way using xshm, and that video method is a real CPU hog. A 
better test would be something like this:

1. run a single instance of xine in the current display, playing back 
something suitable (I don't know what "Highway Star" is ... or, more 
important to the test, how it is encoded (what resolution, what bitrate, 
what codec)). Make sure xine is using xVideo ("xine -V xv 
filename_to_play"). Have xine resizing the video ... double size if that 
works to keep everything actually visible onscreen.

2. also in the current display, run "top". With the entire xie playback 
visible onscreen, note both total CPU use and its components. The total 
should be quite low, under 5% usually, if all is working smoothly. If the 
total is high, and both the "system" and "user" components contribute 
significantly to it, you are seeing the problem I've read about, even if 
the system is managing to keep up.

3. Mention what CPU -- type and speed -- is involved. The faster the CPU, 
the lower the number should be in step 2.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
