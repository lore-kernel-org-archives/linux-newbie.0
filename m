From: "Eve Atley" <eatley@wow-corp.com>
Subject: Setting permissions in a public folder
Date: Wed, 18 Feb 2004 17:41:35 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GNEPLLCIIBHICCOGIAKPIEDGCCAA.eatley@wow-corp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie <linux-newbie@vger.kernel.org>


Hi all, a simple question I think...

I've started getting a basic idea of what I need to do to set up file
permissions and groups, ie. editing /etc/samba/smb.conf, service smb
restart, etc. I know when adding a user, I need to add it not only through
the front-end but also through the UNIX side via smbpasswd and the like.

Now, I've run across a problem. I have set up a public folder 'backup'.
Within each, I have created a folder for each user to put whatever files
they want to backup - I want to lock access to THAT USER only. I currently
have it set up where the file owner is 'root' and the file group as that
owner (ie. 'joe'). Mode is 770.

I'm denied access to everyone's folders, including my own! What am I
missing?

Thanks,
Eve


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
