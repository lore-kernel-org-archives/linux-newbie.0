From: Ray Olszewski <ray@comarre.com>
Subject: Re: group
Date: Thu, 01 Jan 2004 13:42:46 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040101133840.01feb838@celine>
References: <3FF48E66.5000206@dpomeroy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3FF48E66.5000206@dpomeroy.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: dave <dave@dpomeroy.com>

At 01:17 PM 1/1/2004 -0800, dave wrote:
>I'll try to ask this question so that it makes sense.  I'm running 
>Mandrake 9.1.  I've made a folder called "/home/everyone".  I have my 
>daughter sharing an internet connection on my local network.  My router 
>gives ip addresses when she starts her computer, (windows98) and it gives 
>me an ip address when I start up, (Mandrake 9.1).  I'm trying to share the 
>folder "/home/everyone" between  her and me.  Samba gives her access to 
>Laura folder on my linux box and when she logs into my linux machine she 
>can also access her folder.  I've changed the permissions on the 
>/home/everyone folder to rwx with chmod.  When I reboot I loose the w 
>permission on /home/everyone.  Otherwise everything works great.
>Anyone have some suggestions?  Thanks for your help.


Dave -- DId you see my reply to your earlier query to the list? I didn't 
copy you individually, assuming you were subscribed, and I suppose I may 
have assumed wrong. This time I am cc'ing you.

In case you missed it before, I think it still applies to the revised 
version of your questions, so I quote it here. It applies to the slightly 
different trouble report you posted the first time, which is why a couple 
of the specifics may seem not to make sense given this variant in your 
reporting.

>I don't *quite* understand what you are describing. Is it only after the 
>reboot that users are unable to write to the directory? Or are they always 
>unable to write to it?
>
>Just to be sure we are all talking about the same thing, please send us 
>the output of this sequence of commands (run as root):
>
>         ls -l /home/everyone
>         chmod 775 /home/everyone
>         chgrp everyone /home/everyone
>         ls -l /home/everyone
>         grep everyone /etc/group
>
>What test are you using for "cannot write" and what is an example of the 
>actual failure? Are we talking about users unable to save to the directory 
>from login shells? Or Samba failures? Or what? Can root save to the 
>directory (just trying to eliminate here the possibility of a RO filesystem)?
>
>There is probably some error of detail in your procedure. With the above 
>output, I (or someone else here, perhaps even you yourself) may be able to 
>spot it. (For example,. you write: "I used chgrp to make the folders owner 
>group everyone". The term *owner* applies to a userid, not a groupid. This 
>may just be a terminology imprecision, or it may reflect an error in what 
>you are actually doing.)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
