From: Dave <howek@vcss.k12.ca.us>
Subject: Re: Accessing the A Drive - OpenOffice 1.1
Date: Thu, 15 Jan 2004 22:42:35 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <bu80r1$7cn$1@sea.gmane.org>
References: <bu7db6$9rb$1@sea.gmane.org> <5.1.0.14.1.20040115171632.01f0df48@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040115171632.01f0df48@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> At 05:09 PM 1/15/2004 -0800, Dave wrote:
> 
>> I can't figure out how to access the A drive.  I have a document saved 
>> to a disk in my A drive (3 1/2 floppy) and now I want to open it from 
>> OpenOffice 1.1.
>>
>> What the heck am I doing wrong?  (Maybe my A drive is not recognized 
>> by SuSE 9.0?
> 
> 
> It's hard to tell you what you are doing "wrong" when you do not say 
> what you are doing in the first place.
> 
> So ... try this.
> 
> 1. Put the floppy in the floppy drive.
> 
> 2. su to root (in an xterm or eterm, probably ... I surmise you are at 
> an X display).
> 
> 3. Enter this command:
> 
>         mount /dev/fd0 /mnt
> 
> 4a. If you get an error message at step 3 that you cannot interpret, 
> post it here (quote it exactly and completely, please) and we'll try to 
> help. (For example, SuSe 9.0 neither recognizes nor does not recognize 
> "drive A". Particular Linux kernels will or will not have support for 
> the floppy device itself, and will or will not have support for the 
> msdos filesystem on a normal floppy made on a Windows host. The error 
> message will tell you, or us, whether you have one of these problems.)
> 
> 4b. If you do not get an error message at step 3, enter this command:
> 
>         ls -l /mnt
> 
> 5a. If you get an error message at step 4b that you cannot interpret, 
> post it here (quote it exactly and completely, please) and we'll try to 
> help.
> 
> 5b. If you do not get an error message at step 4b, you should see your 
> file listed as part of the response to that command.
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
Ray steps 3 and 4b worked great and I can see my files listed witheh ls 
-l /mnt command.  So now to I use copy commands to move the file back 
and forth to the hard drive so I can work with it in OpenOffice?  or is 
there a way now to access the A drive from OpenOffice?  I guess I was 
expecting that OpenOffice would give me the option of saving to the hard 
drive or to a floopy like Windows does.  Is that not the case?

BTW, thanks for the line by line instructions.  That would have taken 
some time to put together and I appreciate your time and help.

Dave

-- 
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
"So many electrons and so little time!!"
                73   K6DBH   Dave
         Also at, K6DBH@ARRL.net
                             . .
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
