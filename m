From: "Chadha, Devesh" <devesh.chadha@lehman.com>
Subject: RE: keeping static ip address alive between restarts
Date: Fri, 20 Feb 2004 17:54:37 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5F84A09ECDD5D411973000508BE32470266025BA@exnyc07.lehman.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Michael Anaya' <mianaya@edatatrace.com>, Linux-Newbie <linux-newbie@vger.kernel.org>

I believe linuxconf has been discontinued in RH Linux.

Regards,
Devesh


-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Michael Anaya
Sent: Friday, February 20, 2004 5:40 PM
To: Linux-Newbie
Subject: RE: keeping static ip address alive between restarts



> You wrote:
> Running Red Hat 8.0 (2.4.18-14) on an old Acer I have keyed  ifconfig 
> eth0 192.168.0.1 to set my box's ip address for my small LAN. What 
> additional command
> should I use to write that address permanently, so that I do not
> have 
> to
> ifconfig each time I restart? I have read and reread O'Reilly's
> Running
> Linux and Learning Red Hat Linux; is there no process whereby
> the 
> settings
> are written to the correct files for startup, or must I (using
> vi, for
> example) edit certain files myself? 
> 
> Bill Stanard
> ***********************************************
> 
> I personally prefer editing a startup script but Redhat seems to do 
> these things with GUI tools. Have a look here
> http://www.redhat.com/docs/manuals/linux/RHL-8.0-Manual/custom-guide/
> Especially the section III
> 
> cheers
> James
try using "linuxconf" as root. 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org More majordomo info at
http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs


------------------------------------------------------------------------------
This message is intended only for the personal and confidential use of the
designated recipient(s) named above.  If you are not the intended recipient of
this message you are hereby notified that any review, dissemination,
distribution or copying of this message is strictly prohibited.  This
communication is for information purposes only and should not be regarded as
an offer to sell or as a solicitation of an offer to buy any financial
product, an official confirmation of any transaction, or as an official
statement of Lehman Brothers.  Email transmission cannot be guaranteed to be
secure or error-free.  Therefore, we do not represent that this information is
complete or accurate and it should not be relied upon as such.  All
information is subject to change without notice.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
