From: joy <gracecott@sancharnet.in>
Subject: Re: net (& module, I guess) problems after dist-upgrade
Date: Sun, 13 Jun 2004 10:13:07 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40CBDB5B.7060105@sancharnet.in>
References: <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611160033.01fa0948@celine>
 <5.1.0.14.1.20040611183923.01fc9dc0@celine>
 <Pine.LNX.4.58.0406112102240.2201@debian-emach>
 <Pine.LNX.4.58.0406112204310.2201@debian-emach>
 <5.1.0.14.1.20040611215205.01faf760@celine>
 <5.1.0.14.1.20040612111803.01fd5808@celine>
 <5.1.0.14.1.20040612121108.01fc9a80@celine>
 <Pine.LNX.4.58.0406121445360.1825@debian-emach>
 <Pine.LNX.4.58.0406121719540.1071@debian-emach>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <Pine.LNX.4.58.0406121719540.1071@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:

>This has all been a long-winded preface to the question: what
>the heck I gotta do to get my NIC modules back to loading on boot? Am I
>  
>
Well,  since  you know the modules to be loaded , the quick and dirty 
solution would be to put a shell script
in /etc/init.d which says  modprobe this and modprobe that.... followed 
by an ifup -a (just to be sure!)
I used this and works fine for me......

>gonna run into other module problems as well?  What's the way to start
>  
>
That's somthing you'll have to wait and watch (I guess;-)

>this process that gets the module loading routine working as it should be?
>I think there was a reference to modules.dep or maybe modules.conf in that
>message I saw during dist-upgrade.  But there was definitely nothing there
>telling me how I could manually start the process that couldn't finish
>during dist-upgrade.  Any pointers, please?
>
>Thanks, James
>
>PS Most of the above refers to having booted using the new kernel (2.6.6,
>though some of those boots were with the old 2.6.5 kernel and one was even
>with the 2.4.22 kernel).  None of those were able to use eth0 and gave the
>same error message during the boot process.
>  
>
possibly modules .conf was to be written on bootup or something....?.

regards, Joy.M.M
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
