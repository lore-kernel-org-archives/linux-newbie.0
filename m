From: Carl <carl@anexia.co.uk>
Subject: Re: Firewall / Web Monitor
Date: Wed, 30 Oct 2002 15:41:47 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20021030150531.033637d0@interzone.anexia.co.uk>
References: <000001c2801b$e3a48ec0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c2801b$e3a48ec0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 08:54 30/10/2002 -0500, Paul Kraus wrote:
>I have a network of about 25 pcs and 4 servers. With moderate internet
>traffic. What kind of machine do you think I would need for a firewall
>only box? Ipchains or Iptables ( I have some experience with the latter
>and non with Ipchains). I would also like to be able to log where
>everyone is going. Such as what sites they are visiting, the time, and
>the pc that is making the request. Then if we see fit I would like to
>come up with a list of sites that they can visit while restricting all
>others. I would like to have this list be able to be split based on the
>different departments. One list for Accounts Payable one for inventory
>control, ect. Thanks for info. From what I have been reading squid can
>do this but squid says it's a caching server. I don't really think I
>need to cache pages though.

Paul,

Squid does indeed do all the jobs your asking for.

The cache side of it is not a problem as you can turn the cache off or restrict
the size of the downloaded files to help keep  the cache from becoming too
large.

The ACL controls will allow you to set which sites can be accessed by which users
at which times of the day. The sites that are allowed/disallowed are held in plain text
files for easy reading or updating from the web (www.hklc.com maintain an on-line set of
undesirable websites that can be used for blocking in squid. These are mainly porn and
warez sites).

I use SARG (http://web.onda.com.br/orso/index.html) for reporting on who is looking at what.

--
Carl



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
