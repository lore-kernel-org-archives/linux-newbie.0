From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: Re: path Setting
Date: Sun, 13 Jul 2003 15:29:56 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307131529.56904.sotl155360@earthlink.net>
References: <5.1.0.14.1.20030712195144.02087a90@celine> <5.1.0.14.1.20030713071527.0207fea0@celine> <200307131353.33161.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200307131353.33161.sotl155360@earthlink.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, Linux Newbie <linux-newbie@vger.kernel.org>

Hi All and Especially Ray

Please disregard previous request.

This is more complex than I thought.

Sorry but I was on the right track when I was attempting to identify the 
correct files for the path statements. 

Yes there is more than one. 
Now "How they interlate?" and "What part is valid?" are excellent questions.

Thanks
Frank

On Sunday 13 July 2003 13:53, Frank Roberts - SOTL wrote:
> Hi all and Ray
>
> HELP please
> I have about 8 books with some info in it, none complete, and a few web
> sites but I am still not getting it.
>
> THis is wxactly what I did.
> Opened KDE Konsole in home directory
>
> Typed @ > echo $PATH
> Got -> /usr//bin:/bin:/usr/bin::/usr/local/bin:/usr/X11R6/bin:
>      /usr/games:/usr/lib/jdk-1.4.1_01/bin
>
> Copied /usr//bin:/bin:/usr/bin::/usr/local/bin:/usr/X11R6/bin:
>      /usr/games:/usr/lib/jdk-1.4.1_01/bin
>
> Typed @ > PATH= {Copied PATH}
>
> Edited {Copied Path} to be
> /usr/bin:/bin:/usr/bin:/usr/local/bin:/usr/X11R6/bin:
>      /usr/games:/usr/lib/jdk-1.4.1_01/bin
>      {Setting // to be / & :: to be : }
>
> Typed @ > echo $PATH
> Got -> /usr/bin:/bin:/usr/bin:/usr/local/bin:/usr/X11R6/bin:
>      /usr/games:/usr/lib/jdk-1.4.1_01/bin
>
> Ok so far I think.
>
> Next
> Typed @ > EXPORT PATH
> Got -> bash: EXPORT: command not found
>
> Closed out of termal; reopened terminal
> Did echo $PATH
> Got Original PATH
>
> Is this procedure incorrect or what?
> Can I not set the PATH by this procedure?
>
> Thanks
> Frank
>
> > You can also try adding this at the end of ~/.bashrc
> >
> >          PATH=$PATH:/usr/lib/qt3/bin:/usr/lib/jdk-1.4.1_01/bin
> >          EXPORT PATH
> >
> > Then log out completely as that user and log in afresh from a vt or ssh
> > connection or xdm screen (or other variant).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
