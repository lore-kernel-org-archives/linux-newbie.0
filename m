From: Staci <spiritlover666@yahoo.com>
Subject: Re: Suggestion for help-page?
Date: Sun, 28 Apr 2002 14:34:27 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020428213427.47447.qmail@web12805.mail.yahoo.com>
References: <200204281704.40861.1stflight@ameritech.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200204281704.40861.1stflight@ameritech.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

See, this is why I needed a help page.

I made one called test, it contained just this...

#!/bin/bash
cp /home/staci/*.mp3 /
cp /*.mp3 /industgoth/new
rm /*.mp3
rm /home/staci/*.mp3

That's the sequence I'd go thru if I did it by hand. 
And I ran it as root cuz only root has access to that
/industgoth dir.
And they're GONE.  All 20 or so of them.
They're not in /industgoth/new, not anywhere.  Why???
:(

sl


--- 1stFlight <1stflight@ameritech.net> wrote:
> try this 
> 
> --begin--
>    #!/bin/bash
> 
> cp -uv /home/me/*.mp3  /music/
> 
> --end--
> 
> All it's will do is copy any file ending in .mp3 to
> your /music directory. 
> Note: Linux is case senstive and Windows is not, so
> the limit this script has 
> is that it wont copy a MP3 file. Easily fixed and I
> know there's neater way 
> of doing it, but I don't how to do it. Also when you
> create the file don't 
> forget to make it executable, meaning...   "chmod
> u+x filename "
> 
> 					Darryl
> 
> P.S. No worries about permissions, fat32 doesn't
> support them. Note: leave out 
> the "begin" and "end" lines
> 
> On Sunday 28 April 2002 04:45 pm, Staci wrote:
> > Hi!
> >
> > I want to write a tiny simple bash script for
> moving
> > downloaded mp3s from my /home/me directory to my
> > /music directory.
> > (Due to /music being fat32, it's actually a
> process,
> > cuz permissions with winFSs are goofy)
> >
> > Can someone suggest a very VERY newbie-friendly
> > help-page for beginners trying to write a script?
> >
> > Thanks!
> > sl
> >
> > =====
> > **************************
> > In cyberspace nobody can hear you scream.
> >
> > __________________________________________________
> > Do You Yahoo!?
> > Yahoo! Health - your guide to health and wellness
> > http://health.yahoo.com
> > -
> > To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at
> http://www.linux-learn.org/faqs
> 


=====
**************************
In cyberspace nobody can hear you scream.

__________________________________________________
Do You Yahoo!?
Yahoo! Health - your guide to health and wellness
http://health.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
