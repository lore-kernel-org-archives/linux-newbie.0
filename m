From: Ray Olszewski <ray@comarre.com>
Subject: Re: switching to debian (... and installing the NVIDIA
  GeForce4)
Date: Thu, 25 Mar 2004 07:42:19 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040325072647.01f7bde8@celine>
References: <Pine.LNX.4.44.0403250945300.26064-100000@legolas.personal.
 engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0403250945300.26064-100000@legolas.personal.
 engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:46 AM 3/25/2004 -0500, Karthik Vishwanath wrote:

>I installed the 2.4.18 source by 'apt-get install kernel-source-2.4.18',
>extracted the source and made a symbolic /usr/src/linux ->
>/usr/src/kernel-source-2.4.18/, and followed all the instructions below
>as is.
>
>sh NVIDIA-Linux-x86-1.0-5336-pkg1.run quits with an error.
>
># cat /var/log/nvidia-installer.log | grep ^ERROR
>ERROR: Unable to determine the NVIDIA kernel module filename.
>
>
>How to proceed?

Preliminary question: Are you using an installer you got from nVidia, or 
are you using the Debian package nvidia-kernel-source (from non-free/X11)?

Second question: Did you edit the Makefile in /usr/src/linux so it matches 
the version of the running kernel EXACTLY (as reported by "uname -a"; I 
don't care what name the kernel file has)? I ask in part because Richard's 
instructions contain a small typo you may have missed. He says to edit the 
Makefile as follows:
         > change line 4 from
         > EXTRAVERSION =
         > To
         > EXTRAVERSION = -k7

In fact, it should read

         EXTRAVERSION =-k7

(without the space before the hyphen).

Third, I think we are going to have to see the context of the error 
message. I can't find in the nVidia installer where that message is 
generated, so it must come from the binary portion somewhere. The preceding 
lines in the log (or onscreen) probably give some context for interpreting 
the message. If the log file is small (mine is, but from a successful 
install of 4363), include it all. IF it is too long for that, include the 
immediate context of the error.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
