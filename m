From: Ralph Gesler <rgesler@pacificnet.net>
Subject: Re: Strange shutdown problem with KDE2.2.2.
Date: Tue, 16 Apr 2002 10:44:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CBC6319.8EB8337C@pacificnet.net>
References: <Pine.LNX.4.33.0204152254570.28074-100000@enigma.sjcentral.net> <3CBC42AE.EF110DCC@pacificnet.net> <02041615474301.04062@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: JD <jd@sjcentral.net>, linux-newbie@vger.kernel.org

Richard Adams wrote:
> 
> On Tuesday 16 April 2002 15:26, Ralph Gesler wrote:
> > JD wrote:
> > > hmm, strange question, you're not using a TFT monitor are you? they have
> > > a habit of displaying an image a bit like burning paper when there is a
> > > fast mode switch, e.g. when a PC is shutting down. In which case, this
> > > event would be intermittent, which it appears to be.
> >
> > First, in direct reply to yor question: no I am not running a TFT
> > monitor. Secondly, I apologise for not being totaly clear in my first
> > post. I do remember seeing the same symptons occur as described by the
> > origional poster, Ola Theander ie. on shutdown of KDE.  However, I was
> > trying to indicate that the same problem has occured at other times.
> > The point that I did not make clear was that this occurs when switching
> > between vt's ie from, for example, tty1 back to an already running X on
> > tty7 (F7).
> 
> I cant remember if a kernel version was mentioned, i do remember quite a
> while back seeing the same problems that JD mentioned, the problem then was
> the kernel not KDE, i am NOT saying its the kernel that is at fault here, all
> i am saying is something smells very much like a problem i have encountered
> before, if i remember correctly it was around kernel 2.2.14/15/16 cant quite
> remember.
> 
> I conversed with Alan Cox at the time, if one does not know who he is, he is
> a kernel developer and a video spesialist. Folks that have installed Redhat
> will have seen that mugshot accsociated with "kernel development" thats Alan
> Cox.
> 
> So i wonder which kernel version is being used by the orgiganal question
> asker, forgive me if it was mentioned i no longer have the mail to look.
> 
> >
> > Ralhp Gesler
> 
In case you missed it, the origional oster is using a 2.4.18 kernel. I
am using 2.4.4., but alo saw the same event with a 2.2.9 kernel. Do you
recall if Alan Cox may have indicated some kernel option or compile
option that would help to generate dumps or logs that may help track
down the source of the bug.  

Since I can not duplicate the condition at will that causes this bug to
appear, I hope that I will have enough information by the next occurance
to generate som meaningful data.

Ralph Gesler
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
