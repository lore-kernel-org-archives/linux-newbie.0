From: James Ferris <james_e_ferris@yahoo.ca>
Subject: Re: need direction - LAN browse troubleshooting - Thanks Ray
  addenda
Date: Wed, 30 Apr 2003 23:51:49 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030430234440.02d2cd90@pop.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Regarding my submission and your comments...
Thanks. Your suggestions got me re-thinking.

At 28/04/2003 ; 10:58 PM, you wrote:
>Second, what does the smb.conf block for 'SharePt' actually say? And what 
>is the exact exchange that you describe as "Network Path 'not there'."? 
>This part sounds like you may have the "path = " entry in the smb.conf 
>block wrong.

<<see the attached smb.conf file... I think I've just set a read-write 
switch incorrectly.>>

Found my error. I set the SharePt share on \root ... and then set 'root' 
with no-access-allowed via samba.
I've moved the directory (and altered the path) to \tmp\SharePt and now it 
works exactly as I wanted.
Again, my face is red....
  **** **** **** **** **** **** **** **** **** **** **** ****
Last item here... Please recommend 'favorite' books for samba-for-dummies 
... and perhaps something for more experienced users as well. I'll get 
there soon enough.

Regards,
James

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
