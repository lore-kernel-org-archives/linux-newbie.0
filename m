From: Arno Seitzinger <spam2_arno@lucienet.de>
Subject: Re: how to launch downloaded files?
Date: Mon, 16 Dec 2002 11:04:12 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <atk8dl$3p5$1@main.gmane.org>
References: <3DFBEA9E.9000704@look.ca>
Reply-To: spam2_arno@lucienet.de
Mime-Version: 1.0
Content-Transfer-Encoding: 7Bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

R. Bal wrote:

> Hi All,
> 
> I'm a day old Linux user, and am loving the system performance.
> Everthing is great, except that I can't seem to get the files I download
> off the net to "execute".  I know where the files are being saved.  How
> do I "run" them?  I have a Netscape installer, but can't seem to get it
> working.
> 
> Any suggestions?  I'm running Red Hat 8.0.
> 
> RB.


One thing you should keep in mind is that you may have to change the file 
attribute to executeable _if_ you downloaded an executeable file.

Have a look at 'man chmod'
You can use it like 'chmod u+x yourfile' which will change permission to 
executeable for the owner of the file.

HTH

Arno


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
