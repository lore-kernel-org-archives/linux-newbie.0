From: Ray Olszewski <ray@comarre.com>
Subject: Re: Tar Backups
Date: Mon, 30 Sep 2002 12:39:02 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020930123403.02c7c350@celine>
References: <002601c268b6$a09f0d70$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002601c268b6$a09f0d70$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 03:21 PM 9/30/02 -0400, Paul Kraus wrote:
>Is there a way to have an index written? I am making 13gb backups and it
>takes forever to simply restore because it has to read each and every
>single file on the tape. This is actually on my sco box but the question
>is relevant because I plan on moving the file server to a red hat
>machine.

Do you mean that you want to use tar to make a tape backup, and at the same 
time write a separate file that contains a list of all of the files on the 
tape?

If you do mean that ... then just run tar in verbose mode and redirect the 
output to a file. Something like this (though this example saves to a .tar 
file rather than tape):

         tar -cvf somename.tar filespec > index.txt

If you mean something more specific by "index", please describe in more 
detail what you need.


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
