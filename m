From: Jos Lemmerling <jos@lemmerling.nl>
Subject: Re: iptables & a dhcpd question
Date: Thu, 27 Feb 2003 22:09:25 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0302272158340.10476-100000@orthanc.lemmerling.net>
References: <009901c2dea0$9bc86390$4800a8c0@neptune>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <009901c2dea0$9bc86390$4800a8c0@neptune>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 27 Feb 2003, Paul wrote:

> Thanks for all the info! Quick follow up question on the rc.firewall script.
> I've tried running it, just by typing it's name when I'm in that folder at
> root.  It says, "bash: rc.firewall-2.4: command not found"  It's actually
> named, "rc.firewall-2.4" and I've made it executable already, it has a *
> next to its name when I do a listing.  Any ideas??  TIA!

You'll have to tell bash where the script is; you could type the full path
(/path/to/rc.firewall-2.4) or, if you're already in the directory where
the script is type "./rc.firewall-2.4". That should work.

The script is now probarly not in one of the directorys where bash finds
it's executables. 
You could see these directorys if you type "echo $PATH".

Maybe you already have it, but it's good to flush your firewall-settings
at the start of the script.

And please... Try to quote like it should be; below the answers. It's much
easier to read that way!
But it seems to me, this list doesn't care about that... :(


HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.nl)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
