From: Ray Olszewski <ray@comarre.com>
Subject: Re: su fails
Date: Mon, 14 Jul 2003 08:15:00 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030714080202.01ef9e68@celine>
References: <oprsarp9u1hmmv6x@smtp.arrakis.es>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <oprsarp9u1hmmv6x@smtp.arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:04 PM 7/14/2003 +0200, Andrew Langdon-Davies wrote:

>As of a few days ago, when I do 'su' and enter the password at the prompt 
>I get turned down with the reply 'Sorry'.

Does it say *only* "Sorry" or actually something like this (note the extra 
line):

         autovcr@kuryakin:~$ su
         Password:
         su: Authentication failure
         Sorry.
         autovcr@kuryakin:~$

>  I can login normally as either root or normal user. I have tried 
> changing passwords but it makes no difference. It happens in text mode 
> and with X running. This is Slackware 9.0 with windowmaker.

In my experience, a problem like this one (occurring in isolation) usually 
means a PAM problem. I don't know how Slackware has PAM set up, but Debian 
does it with a directory called  /etc/pam.d . Look there (or somewhere 
equivalent on Slackware) for an entry for "su" that tells PAM how to handle 
password requests from the su program. See if it got messed up somehow.

>Is it possible something got messed up when I tried (unsuccesfully) to 
>install Alsa the other day? I compiled, installed and removed several 
>packets, including an rpm packet of modules using the nodeps option.

Possible? Of course, though offhand I cannot see why ALSA would have any 
effect on encryption issues. So I'd guess not *likely* ... though I'd feel 
more confident about that guess if I knew what the "several packets" were, 
and especially what the anonymous "rpm packet of modules using the nodeps 
option" actually was.

>Another thing that stopped working at about the same time was Lilo, which 
>was on the root partition and now will only work from anywhere but there.
> From the root partition now I get the Lilo/Windows menu followed by a 
> blank screen if I select Lilo. Windows works OK. I have no problems if I 
> install Lilo on the MBR or a floppy.

Do you mean lilo the Linux application (used to install and configure the 
bootloader) or lilo the bootloader ityself (usually installed in the MBR of 
hda)?

If we are talking about the bootloader failing ... did you run the (Linux) 
"lilo" command anywhere along the way as part of your setup change? Or did 
you do any BIOS fiddling? Or did you make any changes to your kernel (since 
you mention ALSA, this seems at least plausible) then *not* run the (Linux) 
lilo command to update the bootloader? Is the information in /etc/lilo.conf 
accurate?

If we are talking about the application failing ... please describe what 
you do in more detail.

>So far, everything else seems to be working all right.
>Sorry if this sounds a bit vague but I'm rather mystified myself.

I'm afraid it does seem vague. I hope my questions at least serve to 
clarify the problem description, even if they do not directly lead you to a 
solution.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
