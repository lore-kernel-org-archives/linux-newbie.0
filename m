From: james niland <bareego@yahoo.com>
Subject: RE: changing refresh rate.
Date: Sun, 3 Oct 2004 18:31:10 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20041004013110.46355.qmail@web11409.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

hi all,
Manish wrote :

 How can i change the refresh Rate. I am using Fedora Core 2.
The monitor settings(gdm) does not have refresh rate option. I
want to
make it exactly 100 HZ(My system supports this value in
Windows). I
have Geforce 2 MX 100/200 card and have installed propritary
driver
from nVidia.

I looked in the xorg.conf file. There is not any entry about
refrash 
rate.

Thanks in advance.
Manish
*********************************************************

I have been in the same situation, and the settings pointed out
in the other reply are the ones I've changed as well.
However, the drive from nvidia will actually try to get the 
maximum capabilites of your monitor and not overclock it.

This only works though with monitors that pass that information
back to the video card when requested. All modern monitors
should do this.

I found that out trying to run 120Hz on a high resolution on my
monitor, which would work on the "nv" driver, but not the
"nvidia" one. In the end it pays to be cautious, try to approach
the refresh rate from the lower end.

Cheers
James




		
_______________________________
Do you Yahoo!?
Declare Yourself - Register online to vote today!
http://vote.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
