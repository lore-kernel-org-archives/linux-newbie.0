From: Andrew Langdon-Davies <ald2@arrakis.es>
Subject: Re: su fails
Date: Mon, 14 Jul 2003 19:52:29 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <oprsbalrywhmmv6x@smtp.arrakis.es>
References: <5.1.0.14.1.20030714080202.01ef9e68@celine> <oprsa696n7hmmv6x@smtp.arrakis.es>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <oprsa696n7hmmv6x@smtp.arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org



------- Forwarded message -------
Oops, Sorry
> On Mon, 14 Jul 2003 08:15:00 -0700, Ray Olszewski <ray@comarre.com> 
> wrote:
>
>> At 01:04 PM 7/14/2003 +0200, Andrew Langdon-Davies wrote:
>>
>>> As of a few days ago, when I do 'su' and enter the password at the 
>>> prompt I get turned down with the reply 'Sorry'.
>>
>> Does it say *only* "Sorry" or actually something like this (note the 
>> extra line):
>>
>> autovcr@kuryakin:~$ su
>> Password:
>> su: Authentication failure
>> Sorry.
>> autovcr@kuryakin:~$
>
> It says only "Sorry"
>
>> In my experience, a problem like this one (occurring in isolation) 
>> usually means a PAM problem.
>
> OK. Can't see anything like it. But I've reinstalled the shadow packet 
> and that has corrected the problem. Actually, I'd already tried that but 
> I think the other time I didn't uninstall the old one first.
>
> The lilo bit is not actually a problem as it is working fine from the 
> MBR. But just for the record, it was originally installed on the linux 
> root partition, /dev/hda2. When the su problem turned up, one thing I did 
> was reboot (that shows I'm an ex-Windows user!). At the red box with the 
> menu I chose Linux and the monitor went blank and then powered down. It 
> did the same every time. I booted with a rescue disk, ran fsck, checked 
> fstab and lilo.conf, ran lilo, reconfigured with liloconfig, tried 
> rebooting again after each change, first running lilo each time, to no 
> avail. Then I tried installing lilo on a floppy, which worked, so then I 
> installed it on the MBR. As that works fine I'm leaving it alone for now. 
> It would be nice to know what happened, though.
> Thanks anyway,
> Andrew



-- 
Using M2, Opera's revolutionary e-mail client: http://www.opera.com/m2/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
