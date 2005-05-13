From: Manish Regmi <regmi.manish@gmail.com>
Subject: Re: internet access through proxy...
Date: Fri, 13 May 2005 13:10:02 +0545
Message-ID: <652016d305051300256a0a6679@mail.gmail.com>
References: <652016d30505112356347dff09@mail.gmail.com>
	 <428302C9.50403@comarre.com>
Reply-To: Manish Regmi <regmi.manish@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <428302C9.50403@comarre.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On 5/12/05, Ray Olszewski <ray@comarre.com> wrote:
> The purpose of a proxy server ... from the network manager's point of
> view, anyway ... is to prevent LAN users from accessing the Internet
> with arbitrary applications. So the way to force users to use it is to
> block direct access to the Internet at the firewall/router.
> 
> In a proxy-server setting, you can only proxy the apps that your proxy
> server is willing to proxy ... and those are typically only ftp, http,
> and https (and maybe a couple of others I'm not thinking of right now).
> 
> So no, there is no generic way to use the proxy server for everything.
> For ssh and traceroute, there is most likely no way at all ... and no
> one can tell you about "etc".
> 
> As to lynx, since it is an http client, there is no reason in principle
> why it could not work with a proxy server. Its man page seems to say it
> can do so via ENV variables of the form *_proxy, for example http_proxy
> and ftp_proxy ... but I haven't tried this. So you might look at the man
> page ... down in the section on COnfiguration ... and experiment a bit.
> 

Thank you for making things Clear.

What should i do to use ssh from my system. May i need to ask my
Network Administrator to change some settings in the server.
Or can i do it by adding some softwares.....

Thanks in  Advance...
Manish Regmi

-- 
---------------------------------------------------------
"Owning a hammer doesn't make one an architect"
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
