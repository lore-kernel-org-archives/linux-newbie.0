From: "Calin Szonyi" <caszonyi@linuxmail.org>
Subject: Re: CD-ROM settings and hardware resources...
Date: Thu, 07 Nov 2002 10:28:46 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021107082846.18086.qmail@linuxmail.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: bsimmo1@gl.umbc.edu, jbradford@dial.pipex.com
Cc: linux-newbie@vger.kernel.org


----- Original Message -----
From: Bryan Simmons <bsimmo1@gl.umbc.edu>
Date: 	24 Oct 2002 09:24:26 -0400
To: jbradford@dial.pipex.com
Subject: Re: CD-ROM settings and hardware resources...


> Shows how much I know about basic system design...
> 
> In fact, I was shocked to learn last night that ext2 uses linked lists
> to keep track of files in a directory.  Why is this?  Did the guys who
> wrote the file system specs go to school for computer science?  I can't
> tell you how many times my cmsc professors have told us that the linked
> list is totally inferior to the tree.  At least, it is when it comes to
> large sets of data.  Perhaps the ext2 guys never saw the need for
> extremely large sets of files in a single directory, but still, even
> when hashing, it is suggested that you not handle collisions with linked
> lists...
> Stacks and queues are one thing (when used for temporary operations,
> like iterators and memory management).  But persistent data is another. 
> I would never want to store stuff in a list if it is always going to be
> accessed, growing and shrinking...
> 

1. I think that one of the guys who wrote the ext2fs
(Theodore T'so) works at MIT (so he probably knew
what he was doing)
2. The ext2 fs happens to be the fastest filesystem 
in linux. 
3. You can always come with a better solution 
because linux is open source

Bye 
Calin

-- 
______________________________________________
http://www.linuxmail.org/
Now with POP3/IMAP access for only US$19.95/yr

Powered by Outblaze
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
