From: "John T. Williams" <jtwilliams@vt.edu>
Subject: Re: Limiting download with Squid
Date: Tue, 11 May 2004 11:59:01 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1084290969.14038.7.camel@scotus.fesnel.no-ip.org>
References: <00db01c4373c$ca46a790$0532a8c0@sudhir>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00db01c4373c$ca46a790$0532a8c0@sudhir>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Sudhir Barwal <sudhir@guj.nic.in>
Cc: linux-newbie@vger.kernel.org

This is actually a well written about subject.  

From your description, I would recommend that you use what is called a
token and bucket scheme.  Here is a link to some very good information
about advance routing issues, including setting up bandwidth
restrictions.  

Chapter 9. Queueing Disciplines for Bandwidth Management
http://www.tldp.org/HOWTO/Adv-Routing-HOWTO/lartc.qdisc.html

This gives step by step with good examples.  I actually have a similar
setup in my apartment, to avoid exceeding upload limits set by my isp.  

On Tue, 2004-05-11 at 05:46, Sudhir Barwal wrote:
> Hi everybody,
> I have the following config :
> Linux  : RedHat 8.0
> Squid : 2.5STABLE1
> The above system is working as a proxy server for all the local LAN clients.
> The problem :
> 
> My ISP is allowing the total download say 1GB per month. If the download is
> exceded that limit they are charging extra money for that.
> 
> My Question :
> 
> Is there a way so that I can restrict the client to say
> 10 Mb for 1 group
> 50 Mb for another group
> and so on..
> I want this restriction on IP basis( e.g. say for 192.168.50.1 to
> 192.168.50.50 should be allowed to download 10Mb and after that they should
> get the message ...something like ..."your download limit is over for the
> current month" or simply they should not be allowed to download anything
> beyond that limit, the same is true for other clients also and for
> 192.168.50.55 to 192.168.50.90 permissible limit should be 50Mb)
> 
> I have looked into the "Delay pool" option of Squid but that will be
> applicable to all the users.(Since there are some executives for whom I have
> to allow unlimited download, I know that they are not downloading much, and
> just surfing the net for 1-2 hours etc.)
> 
> Please guide me to the right pointers.
> 
> Sudhir Barwal
> ------------------------------------
> Network Administrator
> sudhir@guj.nic.in
> ------------------------------------
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
