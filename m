From: Ray Olszewski <ray@comarre.com>
Subject: Re: lpr problems with HP Deskjet 712C
Date: Mon, 20 Jan 2003 13:11:38 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030120130241.02119210@celine>
References: <5.1.0.14.1.20030120121028.02117b20@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000f01c2c0c6$5e5547a0$6400a8c0@ngaruahoe>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Jonathan Kallay <yoni@kallay.net>, linux-newbie@vger.kernel.org

Thanks for the additional information. But I still need to see the answer 
to one question you skipped:

> > Second, what does the [printers] block in /etc/samba/smb.conf look like?
> > Assuming it refrences a spool directory, what does the /etc/printcap entry
> > corresponding to that spooler look like?

Or, if Samba is (somehow) configured to use PDQ, rather than a spool 
directory, what does that setup look like? As I said previously,

> > Fourth, when you say " I've got PDQ printing fine" ... how? PDQ appears to
> > be (from the apt-cache package description; I don't use it myself)  just a
> > frontend for workstation use; behind the curtain, lpr or LPRng still needs
> > to be working to support Samba (but not necessarily PDQ) printing.

 From your response, it appears I was unclear. You wrote:

>PDQ isn't just a front end for lpr or Lprng.  PDQ stands for "Print, Don't
>Queue" and is a printing system that circumvents the printing queues
>altogether.  With my printer, it's configured to use the pnm2ppa driver as a
>filter.

Yes, that part was clear from the package description. But how to tell 
Samba to use a queueless printing system -- is there even a printing daemon 
for Samba to use in PDQ? -- is not apparent. It's Samba, not PDQ, that (I 
think) needs some lprd running ... at least that's the only way I know to 
set up Samba ... sorry I was unclear about that before.

At 03:56 PM 1/20/03 -0500, Jonathan Kallay wrote:
[details deleted]


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
