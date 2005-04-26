From: "John T. Williams" <jtwilliams@vt.edu>
Subject: Re: filtering .mp3 packets
Date: Tue, 26 Apr 2005 07:36:25 -0400
Message-ID: <001101c54a54$2e0dc5d0$660aa8c0@descartes2>
References: <fc.004c4e00007a2960004c4e00007a2960.7a296f@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: William Stanard <wstanard@palmertrinity.org>, linux-newbie@vger.kernel.org

Bill Stanard,

There are many ways to attack the mp3 problem, but the one you trying for is
probably the most problematic.  You would not only need to check packets for
mp3's, but you would also have to understand the various protocols used by
file sharing software.   My university tracks the amount of bytes uploaded
by a user and limits bandwidth of users who upload too much. (indicating
that the user is doing something of which the school wouldn't approve).
There are very few uses for massive uploads which would not violate the
average university's Internet use agreement, and those cases could be
addressed on a user by user bases.


However the only way to truly limit the behavior will be to convince the
students not to do it.  Otherwise there will always be a work around.
Packet sniffing is questionable ethical and in some states may violate the
rights of the users, however you can probably do ports scans to protect the
network security and find people running servers on ports which are commonly
used for file sharing.  If someone is running a publicly open server, I
cannot see any problem with finding out what content is being served.  You
could probably write a robot of some sort that could search the file sharing
ports, and raise a flag if it finds contents with *.avi or *.mp3 on it, but
I would check with your legal department before doing so.



----- Original Message ----- 
From: "William Stanard" <wstanard@palmertrinity.org>
To: <linux-newbie@vger.kernel.org>
Sent: Monday, April 25, 2005 7:27 AM
Subject: filtering .mp3 packets


> We've been having some difficulty finding the vocabulary to describe
> filtering content (for example .mp3 files) over TCP-IP. We would like to
> set up our Linux server to do some "trapping" of packets containing .mp3
> files with an eye toward using Linux enabled routing to clean our campus
> of an overwhelming dose of music downloads and trading. To do this
> exploration, I need to know what I should call the process I'm trying to
> perform. Any vocabulary that you can suggest?
>
> Bill Stanard
> Academic Computing
> Palmer Trinity School
> 305.969.4239
>
>
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
