From: lawson_whitney@juno.com
Subject: Re: Sending a FAX simply??
Date: Sat, 11 May 2002 20:50:13 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020511.210407.134663624.1.lawson_whitney@juno.com>
References: <20020428140103.A471@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020428140103.A471@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: haltec@iceweb.net
Cc: linux-newbie@vger.kernel.org

On Sun, 28 Apr 2002, Hal MacArgle wrote:

> Greetings: Does a simple fax program or script exist for sending
> short, simple, text only faxes to one recipient with no cover pages,
> etc and so forth?? Possibly there is a book/manual that will let me
> learn more about Faxing.. The modem manuals barely cover much of
> anything. :^(...
>
> Been using efax for years with almost perfect success until I
> installed kernel 2.4.* on a machine with a USR Courier V-Everything
> FaxModem.

efax works fine with my old v.34 internal and 2.4.13, so I finally
daisy-chained that with the V-Everything and use /dev/tts/3 for efax
and /dev/tts/2 for pppd.
> ...
> Cheers,
>
>     Hal - in Terra Alta, WV,  -  Slackware Linux 8.0   (2.4.13)
>     haltec@iceweb.net | w8mch@iceweb.net..A M$ free environment
> .

Lawson

Constants aren't, and variables won't.



________________________________________________________________
GET INTERNET ACCESS FROM JUNO!
Juno offers FREE or PREMIUM Internet access for less!
Join Juno today!  For your FREE software, visit:
http://dl.www.juno.com/get/web/.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
