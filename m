From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: FW: Super Newbie Questions Please provide Linux/windows  translations :)
Date: Tue, 17 Sep 2002 16:42:30 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004901c25e8a$be0e2110$64fea8c0@pkrausxp>
References: <5.1.0.14.1.20020917131025.026cf820@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020917131025.026cf820@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Ray Olszewski' <ray@comarre.com>, linux-newbie@vger.kernel.org

Responses below
--------------
When asking even basic questions like these, it is helpful to mention
which 
Linux distro you are using. Since you didn't, I will try to give you 
generic Linux responses. But the major distros have their own config 
sustems, and their own peculiar kinks, so you might find some of this 
either slightly off the mark or less helpful than it might be if we knew
more.
------- 
RedHat 7.3

Actually, I would have expected it to read "localhost.localdomain", with

the first part the hostname, the second part the domain (network) name.
-----------
It Does. So the names on an internal network are meaningless. For
instance it could be set to myserver.mynetwork. 
Does the windows workgroup mean anything to Linux? 

In this context, "reference" is a meaningless word. So I'm only replying
to 
your "for instance".
----------------
I do not see how reference is meaningless in this context. I wish to
"reference" the server by name rather then by ipaddress. 


It depends on how the "M$" workstation resolves names. Either put it in
the 
Windows workstations hosts file (which translates between hostnames and
IP 
addresses locally) or add it to the appropriate file on your DNS server.

Without knowing more about your LAN (or your Internet conenction, if you

are talking about pinging from teh Internet), I can't be more specific.
-----------------
This server resides on a peep-to-peer network. In the windows
environment there is a master-browser that maintains a list of all the
computers so they can be "referenced" by name rather the IP. This
browser can change by standard M$ election rules. I do not want to add
this server to every workstations hosts file especially because the ip
is handed out from a router using dhcp. Which is also why I don't want
to have to always do it by ip address. This is all for an internal
network not the internet.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
