From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: Source Install - Maintaining Standards on file locations
Date: Wed, 23 Oct 2002 11:04:57 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004f01c27aa5$8d2af370$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I just loaded up a server with RedHat 7.3. I downloaded the latest samba
and want to install it using the standard for file locations. Actually I
want to use the standard for everything not just samba. But samba is my
first app I am installing.

I am really wanting to have a tight organized system where a standard
prevails over all else. At least closely. For instance I will have a sub
directory under the main directory for the apps. Example smb.conf would
be /etc/samba/smb.conf.
That way I can easily find files and manage my system.

Doing a configure -h there is a list of parameters that lets you choose
where certain files go. I am assuming this is possible with nearly all
source compilations.

Commands Include 
	--binddir			/bin
	--sbindir			/sbin	
	--libexecdir		/libexec
	--datadir			/share
	--sysconfdir		/etc
	--sharedstatedir		/com
	--localstatedir		/var
	--libdir			/lib
	--includedir		/include	
	--infodir			/info
	--mandir			/man

Then it gives examples to what these probably are on your system. I
notice some of these folders or actually most of these folders are in
several locations. Libexec for instance.

I guess my question is how would you organize your installs if you where
trying to stick to standards.
I now rpms are easier and that I am making this way more complicated
then need be but this is more fun :)
		
Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
