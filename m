From: Jim Nelson <james4765@verizon.net>
Subject: Re: 2 questions: 1. ssh permissions to 777 and 2. recursively change
 all directories/files to 777
Date: Fri, 10 Dec 2004 16:05:11 -0500
Message-ID: <41BA0F87.50806@verizon.net>
References: <Pine.LNX.4.21.0412101448570.4138-100000@hestia>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0412101448570.4138-100000@hestia>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org


> 
>>Question 2:
>>Try the following:
>>
>>-----------------------------------[cut]--------------------------------------------
>>-----------------------------------[cut]--------------------------------------------
>>
>>I use this to fix permissions on a Samba box - you will have to modify or drop the 
>>chown line to leave the ownership properties alone.
> 
> 
> Why not adding a special group to your /etc/group or setting a default
> mask in your smb.conf ? That's what these programs, files are for..
> That would eliminate the need of your script.. And is one cronjob
> less.. One process less, memory less, cpu cycles less.. etc..
> 
> J.
> 

Sorry - one bit of info I left out.  The same filesystem is also exported via NFS.

I don't control all the *nix boxes that connect to it, and the Slackware / Solaris 
/ Red Hat mix makes for some... err... interesting file permission issues.  UID's 
don't matter (it's a media repository), and I only run this after some mistake was 
made on the *nix side (i. e. ripping a CD as root, changing out of group users and 
copying files on the server, etc.).  Samba tends to be pretty well-behaved.  It's 
the NFS stuff that causes problems.

> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
