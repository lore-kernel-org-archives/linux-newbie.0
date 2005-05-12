From: "J." <mailing-lists@xs4all.nl>
Subject: Re: internet access through proxy...
Date: Thu, 12 May 2005 12:31:59 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0505121216300.551-100000@hestia>
References: <652016d30505112356347dff09@mail.gmail.com>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <652016d30505112356347dff09@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 12 May 2005, Manish Regmi wrote:

> Hi,
> 
>   My PC uses a proxy server to connect to the internet. I can easily
> assess the internet by changing the Browser options. But i am unable
> to use lynx, ssh, traceroute etc.

Is the proxy located or provided by your ISP or is it really running and 
init'd by you on your pc or on your own local network [lan] ?

> Do i need to change all of their configuration files?
> If yes which one and where?
> Is there any generic way?
> 
> Thanks in Advance.
> Manish regmi

No there is no generic way. It's not like your DNS settings for example.

You will have to set the preferences for each program independantly - 
If the program is able and made to go thru a proxy !

To use a proxy with lynx uncomment and set the appropiate
proxy variable's in your /etc/lynx.cfg . Search for `proxy' in that config
file.

Do the same for your ftp client, look in the manual page of your
ftp-client to see if a proxy is supported and which variables in the
config file you have to set. 

SSH does not have a proxy variable that you can set, however there are
other ways you can achive this task. Search www.google/linux for `ssh
proxy' will turn up some scripts that use netcat to proxy your ssh tunnel 
if you want to run a ssh proxy server on you lan.

Traceroute is not made to be proxyd - It's a network discovery tool.

The term proxying is different than the actual proxy PROGRAM you are
using. For the last it depends what protocols the program supports. While
the term proxy in theory can be applied to just about anything.

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
