From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: Tar Backups
Date: Mon, 30 Sep 2002 15:48:58 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <003201c268ba$6b62ad70$64fea8c0@pkrausxp>
References: <5.1.0.14.1.20020930123403.02c7c350@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020930123403.02c7c350@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org

I understand about outputting the contents to file. On my m$ system the
backup software indexes the tape so that when you want to get a file off
of it the software looks at the index for the location on the tape. Fast
forwards to the spot, and then restores the file. With tar it reads
every inch of the tape until it comes to your file. This is anything but
efficient. Any suggestions?

-----Original Message-----
From: Ray Olszewski [mailto:ray@comarre.com] 
Sent: Monday, September 30, 2002 3:39 PM
To: Paul Kraus; linux-newbie@vger.kernel.org
Subject: Re: Tar Backups


At 03:21 PM 9/30/02 -0400, Paul Kraus wrote:
>Is there a way to have an index written? I am making 13gb backups and 
>it takes forever to simply restore because it has to read each and 
>every single file on the tape. This is actually on my sco box but the 
>question is relevant because I plan on moving the file server to a red 
>hat machine.

Do you mean that you want to use tar to make a tape backup, and at the
same 
time write a separate file that contains a list of all of the files on
the 
tape?

If you do mean that ... then just run tar in verbose mode and redirect
the 
output to a file. Something like this (though this example saves to a
.tar 
file rather than tape):

         tar -cvf somename.tar filespec > index.txt

If you mean something more specific by "index", please describe in more 
detail what you need.


--
-------------------------------------------"Never tell me the
odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
------------------------------------------------------------------------
-------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
