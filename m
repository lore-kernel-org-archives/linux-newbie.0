From: Ray Olszewski <ray@comarre.com>
Subject: Re: internet access through proxy...
Date: Fri, 13 May 2005 08:32:18 -0700
Message-ID: <4284C882.90808@comarre.com>
References: <652016d30505112356347dff09@mail.gmail.com>	 <428302C9.50403@comarre.com> <652016d305051300256a0a6679@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <652016d305051300256a0a6679@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Manish Regmi wrote:
> On 5/12/05, Ray Olszewski <ray@comarre.com> wrote:
> 
>>The purpose of a proxy server ... from the network manager's point of
>>view, anyway ... is to prevent LAN users from accessing the Internet
>>with arbitrary applications. So the way to force users to use it is to
>>block direct access to the Internet at the firewall/router.
>>
>>In a proxy-server setting, you can only proxy the apps that your proxy
>>server is willing to proxy ... and those are typically only ftp, http,
>>and https (and maybe a couple of others I'm not thinking of right now).
>>
>>So no, there is no generic way to use the proxy server for everything.
>>For ssh and traceroute, there is most likely no way at all ... and no
>>one can tell you about "etc".
>>
>>As to lynx, since it is an http client, there is no reason in principle
>>why it could not work with a proxy server. Its man page seems to say it
>>can do so via ENV variables of the form *_proxy, for example http_proxy
>>and ftp_proxy ... but I haven't tried this. So you might look at the man
>>page ... down in the section on COnfiguration ... and experiment a bit.
>>
> 
> 
> Thank you for making things Clear.
> 
> What should i do to use ssh from my system. May i need to ask my
> Network Administrator to change some settings in the server.
> Or can i do it by adding some softwares.....

There is no real way to avoid talking to your network administrator 
about this. If I understand your desciption of the setup correctly ... 
and this is a real source of uncertainty, as I've assumed a lot in 
filling in gaps in what you actually said ... whoever is in charge of 
your network *intends* to interfere with your ability to use ssh (for 
example) to access the Internet.

Working around designed-in limitations to your Internet access isn't 
really a Linux problem, although if you find a type of workaround that 
will server your needs, then finding a Linux application to do that 
workaround surely is. But the first thing you need to do is get a better 
understanding of why your access comes with these limitations and 
whether your network administrator is helpful with or opposed to your 
efforts to work around them.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
