From: Steven Ackerman <ackerman_steven@yahoo.com>
Subject: Re: Fatal Server Error: no screens found
Date: Sat, 19 Jun 2004 22:39:47 -0700 (PDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040620053948.11918.qmail@web14807.mail.yahoo.com>
References: <40D4FB63.8090309@kevino.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <40D4FB63.8090309@kevino.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, mike@kevino.org

Mike,

Thanks for the quick response. I did exactly as you
said and it started drakxconf. The settings you gave
me did not work. I have a flatscreen moniter. I didn't
know what kind of video card I had, but I found out.
It's an SiS. And the flatscreen is capable of doing
1024X768, so I chose those settings in drakxconf. It
worked as soon as I typed startx.

Thanks alot. This list is awesome. I know it's basic
stuff, but not if you don't know. Is drakxconf, just a
Mandrake version of linuxconf?

-Steve

--- mike <mike@kevino.org> wrote:
> At the console log in as root and type "drakxconf"
> without quotes.
> 
> [root@avatar root]# drakxconf
> 
> A menu will pop up and choose Display and select ok.
> 
> It will give you a menu of choices for
> graphic,monitor,resolution,
> and option.
> select graphic and then do. It will display a list
> of graghic cards
>  usually the correct one will be highlighted select
> that one.
> Then select your monitor and probably plug n play
> will be
> highlighted choose that or what ever the drakx has
> highlighted.
> then choose your resolution, if you have a 15 or 17
> monitor probably
> 1024x768 16bpp would be safe.
> Then you can test it by selecting test screen will
> freak a little
> then you should see a box saying is this ok if you
> see the box your
> probably ok so say yes.
> 
> On another note under the option choice you can
> choose x to start
> automatically (run level 5). I like to say no, so I
> log into console
> (run level 3) and start the gui with "startx" or an
> excellent little
> script "Xtart" (it should be on your cd's if you
> have mandrake)
> 
> That would be the less painful way to get you going.
> 
> Mike
> 
> 
> Steven Ackerman wrote:
> > Greetings yet again. I feel I'm making progress,
> but I
> > still need help in dealing with general linux
> > troubleshooting. The error in the subject line is
> the
> > error I get when my system is booting.
> > 
> > I then get a message about sending the full server
> > out, not just the message and a log file. The file
> is:
> > /var/log/XFree86.0.log. I opened that file with
> emacs.
> > Lot's of stuff.
> > 
> > The last line has my fatal server error, but I
> noticed
> > it has a line (I will quote it) above it which
> > indicates it is trying to load an S3 Video driver.
> I'm
> > pretty sure my machine does not have an S3.
> However, I
> > was trying to adjust my resolution to fill my
> screen
> > with a gui based mandrake tool and had clicked on
> an
> > S3 video driver. That was not good, but I thought
> I
> > had changed it back to generic. Could that be my
> > problem?
> > 
> > I don't know how to change it. I can only log into
> the
> > command line. I can navigate somewhat, but don't
> know
> > how to troubleshoot this and/or make configuration
> > changes. Please help.
> > 
> > I have searched mandrakes websites, posted a
> message
> > to their support forum and googled like crazy and
> > found no answers. I've worked on this all day,
> hoping
> > I could figure it out, now I just want to know how
> to
> > fix it. Thanks again.
> > 
> > -Steve
> > 
> > 
> > 		
> > __________________________________
> > Do you Yahoo!?
> > Yahoo! Mail is new and improved - Check it out!
> > http://promotions.yahoo.com/new_mail
> > -
> > To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at
> http://www.linux-learn.org/faqs
> > 
> -
> To unsubscribe from this list: send the line
> "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at 
> http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at
> http://www.linux-learn.org/faqs
> 



		
__________________________________
Do you Yahoo!?
Yahoo! Mail Address AutoComplete - You start. We finish.
http://promotions.yahoo.com/new_mail 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
