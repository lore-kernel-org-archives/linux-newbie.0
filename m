From: Ray Olszewski <ray@comarre.com>
Subject: Re: Accessing the A Drive - OpenOffice 1.1
Date: Thu, 15 Jan 2004 23:14:39 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040115230051.01f0e1c8@celine>
References: <5.1.0.14.1.20040115171632.01f0df48@celine>
 <bu7db6$9rb$1@sea.gmane.org>
 <5.1.0.14.1.20040115171632.01f0df48@celine> <bu80r1$7cn$1@sea.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <bu80r1$7cn$1@sea.gmane.org>
References: <5.1.0.14.1.20040115171632.01f0df48@celine>
 <bu7db6$9rb$1@sea.gmane.org>
 <5.1.0.14.1.20040115171632.01f0df48@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:42 PM 1/15/2004 -0800, Dave wrote:
[...]
>Ray steps 3 and 4b worked great and I can see my files listed witheh ls -l 
>/mnt command.  So now to I use copy commands to move the file back and 
>forth to the hard drive so I can work with it in OpenOffice?

I don't know how you have the root filesystem (/) set up on your computer. 
If it is fairly standard, you can use the cp command to copy the files from 
the floppy to your home directory. You'd do it with a command of this form 
(after you've mounted the floppy on /mnt as my prior message detailed)

         cp /mnt/name_of_file /home/your_userid

making what I hope are obvious substitutions.

>or is there a way now to access the A drive from OpenOffice?

I haven't used OpenOffice on Linux, so I can't answer this directly. I 
would expect (based on using it on Windows) that its File-Open dialog box 
gives you some sort of GUI representation of the filesystem, permitting you 
to access the floppy drive at its mount point. /mnt .

BTW, "A drive" is purely DOS/Windows usage, not Linux usage; on Linux, the 
first floppy drive is associated with the device name /dev/fd0 . So if I 
take your question literally, the answer is NO, since Linux has no A drive 
as such. I've tried to answer the question you meant to ask, not the actual 
oe you asked.

>I guess I was expecting that OpenOffice would give me the option of saving 
>to the hard drive or to a floopy like Windows does.  Is that not the case?

As I said, I have not used OpenOffice on Linux. But I think the key problem 
for you is adjusting to the concept of filesystems having mount points 
rather than DOS/Windows style Drive Letters. With Linux systems, you can't 
just put a floppy in and have it recognized. You need to mount it after 
inserting it, and you should unmount it (though the actual command name is 
umount, no typo) before removing it, with the command

         umount /mnt

There is a lot more you should learn about mount points, but it's too much 
for an e-mail response. Look at the file /etc/fstab to see how your system 
stores information about its filesystems. You can read the man page on 
fstab too, though I think it pretty murky for a beginner. Probably you want 
to read some introductory book, of the sort that people were discussing 
here a few days ago.

>BTW, thanks for the line by line instructions.  That would have taken some 
>time to put together and I appreciate your time and help.

That's what this list is for. Glad I could help.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
