From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: howto configuring kernel and modules.conf for automatic loading of ide-scsi
Date: Sun, 25 Jan 2004 20:30:31 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401252030.31572.pa3gcu@zeelandnet.nl>
References: <5.1.0.14.1.20040124202304.01f31308@celine> <5.1.0.14.1.20040125082404.01f99be0@celine> <20040125211055.10e7943a.agri@desnol.ru>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040125211055.10e7943a.agri@desnol.ru>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Agri <agri@desnol.ru>, linux-newbie@vger.kernel.org

On Sunday 25 January 2004 19:10, Agri wrote:
> here... i want to mention one strange thing...
> if i "touch" for hd? device "hided" by ide-scsi kmod will request for a
> module and system will load ide-scsi... curious... don't you think?

Too be honest i have no clue as to what you mean however i never have any 
problem with loading of modules, normally speaking i never have to use 
modprobe, i only use modprobe if i do things via scripts and that only to 
make sure the module is loaded otheriwse the sript would need to do all sorts 
of checks first.

I dont know if you tryed my suggestion i made in my last mail on this subject, 
another is simply add;
append="hdX=ide-scsi"
X= a,b,c or d on your system, to /etc/lilo.conf and rerun lilo or do the 
equivilant under grub if thats what you use.
As you said you did not like the idea of loading modules at boottime but i 
think you should reconsider as that in itself does not hinder or slow down 
your system one bit.

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
