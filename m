From: Ray Olszewski <ray@comarre.com>
Subject: RE: FW: Super Newbie Questions Please provide Linux/windows 
  translations :)
Date: Tue, 17 Sep 2002 14:09:26 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020917140007.026fb090@celine>
References: <5.1.0.14.1.20020917131025.026cf820@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <004901c25e8a$be0e2110$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 04:42 PM 9/17/02 -0400, Paul Kraus wrote:
>[...]
>In this context, "reference" is a meaningless word. So I'm only replying
>to
>your "for instance".
>----------------
>I do not see how reference is meaningless in this context. I wish to
>"reference" the server by name rather then by ipaddress.

I'm not going to get in an argument with you. Let's just leave it that I 
don't know what you mean, to the extent that you meant anything more than 
the "for instance" you gave. Perhaps someone else will be able to help here.

>It depends on how the "M$" workstation resolves names. Either put it in
>the
>Windows workstations hosts file (which translates between hostnames and
>IP
>addresses locally) or add it to the appropriate file on your DNS server.
>
>Without knowing more about your LAN (or your Internet conenction, if you
>
>are talking about pinging from teh Internet), I can't be more specific.
>-----------------
>This server resides on a peep-to-peer network. In the windows
>environment there is a master-browser that maintains a list of all the
>computers so they can be "referenced" by name rather the IP. This
>browser can change by standard M$ election rules. I do not want to add
>this server to every workstations hosts file especially because the ip
>is handed out from a router using dhcp. Which is also why I don't want
>to have to always do it by ip address. This is all for an internal
>network not the internet.

This is really a Windows networking question now, not a Linux question as 
such ... and I'm not expert on Windows-based networks. How does this 
Windows "master-browser" handle resolving the names of *any* device other 
than a Windows workstation or server (e.g., a Macintosh or a router)? 
Handle this Linux host the same way. (Doing this might involve getting more 
help with Samba than I can give you.)

In a Linux framework, BTW, the usual solution would be for the DHCP server 
to handle it. It would include a hostname assignment in the lease info (or 
it would use a MAC-address tie-in to associate a static address with the 
host - usually, you want *servers* to stay put with respect to their IP 
addresses anyway). And it would run a DNS resolver that provided the 
name-address translation on-LAN.


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
