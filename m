From: joy <gracecott@sancharnet.in>
Subject: agpgart problem
Date: Fri, 11 Jun 2004 16:27:03 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40C98FFF.9050909@sancharnet.in>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi everyone,

A friend and I had this strange problem with agpgart. He ahd upgraded 
his Woody to Sid just days ago and he is not able to get X to work(ver 4.4).
the X o/p says error unable to open /dev/agpgart : no such file or device.
This though /dev/agpgart exists with major/minor   10/175 (as in 
devices.txt).
After googling around , we decided to build a new kernel and built a 
kernel with the 2.4.26 source got with the The RedHat Distro(He also has RH)
with agpgart built in.
This didn't work either. Same error.
However, in RH, X worked fine
We then did an apt-get for the 2.6.6 image and booted thru it.now a 
newer, funkier message appeared and we ditched it immediately.
built a custom 2.6.6 and booted thru it, The same result.
Then 2.6.6 started rebooting mysteriously without cause. Thought it 
might be the APIC and disabled it, built a new kernel.
the other kernel too had the same problem.

Hardware : Intel 845G Chipset.

Another one of my friends with thesame chipset on woody got his X 
working.......

This guy might be employing me for some time and it would be nice if I  
impressed him with a solution :-)
So, anybody with any solutions, pleeeeze heeeeelpppp!

Thanx in advance,
Joy.M.M
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
