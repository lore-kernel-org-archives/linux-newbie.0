From: joy <gracecott@sancharnet.in>
Subject: mouse not writing to device file.....
Date: Thu, 12 Feb 2004 09:15:28 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <402AF6D8.4080702@sancharnet.in>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

I just had this problem after I reinstalled woody on my system. 
previously, I had the same problem with my mouse not working on startx
but I managed to correct it though it slipped my mind somehow. anyways, 
my XF86Config file says my input devices are /dev/psaux and /dev/input/mice.
However if I cat either of the file and start clicking away, there is no 
change in the file (I tried this on a SW Live distro and it worked there.
so if my mouse is not writing to either of the two device files, what 
should I do? I also checked the other /dev/input/ mouse files and they 
say no device..

Thanks a lot in advance,
Joy.M.M

> --------------------------------------------------------------------------------------------------------
> A life without purpose is like a bird that never learnt to fly.......
> I am the bird that regularly flies Lufthansa


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
