From: Ray Olszewski <ray@comarre.com>
Subject: Re: Delete /home/shared Samba directory; need better SSH
  solution!
Date: Wed, 09 Feb 2005 10:04:51 -0800
Message-ID: <5.1.0.14.1.20050209092740.02f55340@celine>
References: <20050203213557.GA868@lnx2.w8mch.ampr.org> <010a01c50ebf$79999d60$260aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <010a01c50ebf$79999d60$260aa8c0@lanadmin>
References: <20050203213557.GA868@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:53 AM 2/9/2005 -0500, Eve Atley wrote:

>We have people remotely SSH into our box from our overseas branch in India,
>and I didn't want to create a home directory for every user at that branch.
>So, I plopped them into /home/shared so they could view our network shares,
>and therefore gain access to the folders for which they had permission
>(having set up groups and put each user into a group). Yesterday, I ended up
>deleting our Samba shares directory (/home/shared) because I was attempting
>to get rid of a user; Linux prompted me if I wanted to get rid of that
>user's files, and I hit ok without thinking, thereby wiping out most of our
>network.
>
>I'm slowly but surely restoring everything, but I'm wondering how to
>approach remote SSH a bit more safely. I was thinking of having 1 SSH user
>only for our users to work with.
>
>Let me know if you require more information. OS is RedHat Linux 9, soon to
>be upgraded to RH Enterprise WS 3.0.


All ssh itself provides you with is a way to connect over an insecure 
network (the Internet) in a way that protects the content of the 
transmissions from being read anyplace other than at the endpoints of the 
connection. All the other security issues are no different from any other 
login mechanism and are, really, matters of on-host security management.

Addressing those issues really is specific to the site and the contents of 
what you are trying to protect, details I wouldn't even suggest you share 
in this public a forum. But that said, I am (and others are) left only able 
to offer generalities in the way of advice.

Having a single ssh user is, in my opinion, a bad idea. It means that you 
have no accountability ... if a problem arises, you don't know who was 
actually logged in at the time. And it means a single password is shared 
among an unknown number of people, making any procedure for password 
protection pretty much nonsense, and making the process of changing the 
password cumbersome.

Were I to try to eal with your setup as I understand it, I'd do something 
like this:

1. For each remote user, set up an individual shell account, with a good 
password. (That is, don't do what your first sentence above says, despite 
its having a superficial simplicity.) Then expect (demand) that each user 
treat his or her userid/password information as confidential company 
information to be protected by whatever standards the company usually uses. 
And set up your system so ssh (including things tunneled through ssh, like 
scp) is the ONLY way a user can connect to the system.

2. Put all these users into a group - I'll call it "india" for now".

3. For the files and directories you want these folks to have write access 
to, make them mode 664 or 774 as appropriate, chgrp them to india, and let 
them rely on group- rather than user-level access. Set these users' umasks 
so files they upload have appropriate permissions.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
