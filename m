From: Ray Olszewski <ray@comarre.com>
Subject: Re: missing man and smbsh
Date: Fri, 20 Dec 2002 19:26:50 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021220191905.020c3c10@celine>
References: <007801c2a89f$811fb340$6400a8c0@00arc>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <007801c2a89f$811fb340$6400a8c0@00arc>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:17 PM 12/20/02 -0500, Jonathan Kallay wrote:
>I'm running Debian 3.0 and have been working on setting up my machine on a
>Windows network.  I installed the packages samba, samba-common, swat, smbfs
>and smbclient.  When using smbmount I've gotten an error from the kernel- I
>tried running "modprobe smbfs", but the smbfs module couldn't been found.  I
>also tried running smbsh but that couldn't be found either.

What kernel are you using ("uname -a")? Last time I checked, Debian 
Woody  (3.0) installs 2.2.20-compact by default, and that binary doesn't 
include the smbfs module. You'll need a full-strength kernel, either one 
you get in binary form ("apt-cache search kernel-image" for the choices) or 
that you compile yourself ("apt-cache kernel-source" for the choices).

>I thought that perhaps there were setting that I did not correctly set when
>installing Samba (such as the -smbwrapper option).  So I tried using dselect
>to remove and reinstall Samba.  However, before compilation dselect didn't
>prompt for any options.

I haven't done this is in a long time myself, so I don't recall what 
options it might prompt for.

>After Samba was reinstalled, I discovered that the system could no longer
>find man!

You need to describe this "discovery" in a bit more detail to get any help 
with it. What command did you actually type and what was the response?

>Anyone have any suggestions on what could have happened, and how
>to get smbsh or smbmount to work properly?



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
