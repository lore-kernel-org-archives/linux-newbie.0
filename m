From: Ray Olszewski <ray@comarre.com>
Subject: RE: File in use Samba ( was Script as root)
Date: Tue, 01 Oct 2002 09:12:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021001090647.02cbc720@celine>
References: <1033482227.10135.152.camel@Zebra>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c2695a$e1001f90$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 10:57 AM 10/1/02 -0400, Paul Kraus wrote:
>I have written the script to tar up folders on my xp box. The script
>works. I mount -t smbfs .... The folder I want. I then tar mnt/folder
>The problem is that I get errors saying that the file changed as we read
>it. Or text file busy.
>None of the files are in use. Nor are they system files of any kind. I
>know for a fact that the xp system is not using them. Any ideas as to
>what may be causing this?

The only idea this description suggests to me is that the file in question 
was recently changed and buffered on the XP system, and the "change" tar 
detects is the result of the XP system sync'ing (or its Windows equivalent) 
the hard drive to the buffer. But this is fishing in a cloudy pond. Could 
you repost with a small snippet that reports the actual message tar (or 
smbd or mountd or whatever is giving you the error) posts for each of the 
two errors?


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
