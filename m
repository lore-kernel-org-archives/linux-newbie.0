From: Ray Olszewski <ray@comarre.com>
Subject: Re: lpr problems with HP Deskjet 712C
Date: Mon, 20 Jan 2003 17:37:39 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030120165746.02125280@celine>
References: <5.1.0.14.1.20030120121028.02117b20@celine>
 <5.1.0.14.1.20030120130241.02119210@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001d01c2c0ca$6068c180$6400a8c0@ngaruahoe>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Jonathan Kallay <yoni@kallay.net>, linux-newbie@vger.kernel.org

This is a good bit different from what I am used to, so I have to guess a 
bit about what some of it means.

The Samba block for [lp] seems to be saying that Samba should print to this 
printer by executing (approximately) this command:

         lpr -Plp /tmp/somefilename

Are you able to run a similar command from the command line (substituting a 
suitable file name)? Probably not ... but see my last suggestion below. If 
not, how does it fail?

In printcap, I see one clear error and one entry I am unfamiliar with. The 
error is on this line:

         :lp=/dev/lp0

It needs to read:

         :lp=/dev/lp0 \

The unfamiliar usage is the %P

         :sd=/var/spool/lpd/%P:\

While it is easy to infer what this is intended to do, I don't know if it 
works in a printcap entry. The man page for printcap doesn't mention this 
usage. I'd try

         :sd=/var/spool/lpd/lp:\

(and make sure that /var/spool/lpd/lp exists and has sensible permissions).

Finally, since you have the correct driver on your Windows machine, there 
is a way to do the "cat" test that you might find helpful. On the Windows 
machine, use Word to print to file, using the appropriate printer driver. 
Then somehow (via SMB filesharing, for example ... or NFS or ftp or scp or 
whatever you have set up) copy the printer file to the Linux host. Then cat 
*that* file to /dev/lp0; since it is formatted for the printer, it should 
print if the printer and the parport stuff is working right.

So ... if that works, your problem is most likely in the handoff that Samba 
does to lpd (by way of lpr). In that case, my next step would be to fix 
printcap, then try

         lpr -Plp filename

where filename is the file you used successfully in the "cat" test.

If it doesn't work ... then the problem is in the parallel-port driver 
setup (it's the source of the actual error message you see) ... or maybe in 
the printer or the cable ... but I'm then puzzled about why PDQ *does* work.

At 04:24 PM 1/20/03 -0500, Jonathan Kallay wrote:
>   I referred to PDQ simply as proof of an existing setup that does work.  I
>think it's mostly irrelevant when it comes to using the Linux box as a
>printserver over SMB.
>
>here's my printcap file:
>lp:\
>   :lp=/dev/lp0
>   :sd=/var/spool/lpd/%P:\
>   :sh:
>
>and the smb.conf blocks:
>[printers]
>         comment = All Printers
>         path = /tmp
>         create mask = 0700
>         printable = Yes
>         browseable = No
>
>[lp]
>         path = /tmp
>         read only = No
>         create mask = 0700
>         guest ok = Yes
>         printable = Yes
>         print command = lpr -P'%p' %s
>         printer name = lp




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
