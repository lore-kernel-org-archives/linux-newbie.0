From: James Miller <jamtat@mailsnare.net>
Subject: how to replace three spaces with tab
Date: Thu, 2 Jun 2005 17:11:59 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0506021711350.7223@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Here's another example of what looks like something that should be fairly 
straightforward but which I've been struggling with for at least an hour 
and cannot find an answer. I ran into this before and was similarly 
stumped, so I did it all manually. This time I just want to get it done 
and finally find out the secret, my ignorance, or whether this really is 
one of those irresolvable riddles of (Linux) life.

I have a document that consists of about 5,500 entries, each on its own 
line. If this matters, it's a block file to block out advertising by 
resolving certain domains to the localhost (127.0.0.1). In each line of 
the file as I saved it, there are three space characters between the IP 
and the domain name (damn that elinks browser for doing that!). For my 
router to effectively use the file, each of those 5,500 three-space 
sequences need to be changed to a tab sequence--like when you press the 
tab key while typing in a document. How can I automate this?

I know how I'd do it in Word, but I've sworn off that sorry excuse for a 
piece of software (those guys in Redmond will be jumping with glee when 
they read this one: man with naive open source principles walks off Linux 
precipice). None of the Linux equivalents I've tried (Abiword, OpenOffice, 
gedit, nano) gives any indication of how a tab character can be inserted 
in their search-and-replace feature. There are no formatting characters to 
select, as they call them in smarmy M$ speak. The search-and-replace 
dialogues all understand hitting the tab key as the user wanting to move 
to the next field, not as data entry. There's probably a simple command 
line way to do this, but if I were adept enough at simple command line 
stuff, I'd have found it already. Can anyone offer pointers on how to 
automate replacement of the 5,500 three-space sequences with a tab 
sequence?

Thanks, James

-------------------------------------------------------------------+
If you hit the "reply" button in your email client to respond to my 
message, be sure to remove the REMOVETHIS portion of my email address 
(inserted as an anti-spam tactic). If you don't, your message won't 
reach me.
-------------------------------------------------------------------+
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
