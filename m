From: mike <mike@kevino.org>
Subject: Re: Fatal Server Error: no screens found
Date: Sat, 19 Jun 2004 19:50:11 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40D4FB63.8090309@kevino.org>
References: <20040620003832.1814.qmail@web14823.mail.yahoo.com>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040620003832.1814.qmail@web14823.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

At the console log in as root and type "drakxconf" without quotes.

[root@avatar root]# drakxconf

A menu will pop up and choose Display and select ok.

It will give you a menu of choices for graphic,monitor,resolution,
and option.
select graphic and then do. It will display a list of graghic cards
 usually the correct one will be highlighted select that one.
Then select your monitor and probably plug n play will be
highlighted choose that or what ever the drakx has highlighted.
then choose your resolution, if you have a 15 or 17 monitor probably
1024x768 16bpp would be safe.
Then you can test it by selecting test screen will freak a little
then you should see a box saying is this ok if you see the box your
probably ok so say yes.

On another note under the option choice you can choose x to start
automatically (run level 5). I like to say no, so I log into console
(run level 3) and start the gui with "startx" or an excellent little
script "Xtart" (it should be on your cd's if you have mandrake)

That would be the less painful way to get you going.

Mike


Steven Ackerman wrote:
> Greetings yet again. I feel I'm making progress, but I
> still need help in dealing with general linux
> troubleshooting. The error in the subject line is the
> error I get when my system is booting.
> 
> I then get a message about sending the full server
> out, not just the message and a log file. The file is:
> /var/log/XFree86.0.log. I opened that file with emacs.
> Lot's of stuff.
> 
> The last line has my fatal server error, but I noticed
> it has a line (I will quote it) above it which
> indicates it is trying to load an S3 Video driver. I'm
> pretty sure my machine does not have an S3. However, I
> was trying to adjust my resolution to fill my screen
> with a gui based mandrake tool and had clicked on an
> S3 video driver. That was not good, but I thought I
> had changed it back to generic. Could that be my
> problem?
> 
> I don't know how to change it. I can only log into the
> command line. I can navigate somewhat, but don't know
> how to troubleshoot this and/or make configuration
> changes. Please help.
> 
> I have searched mandrakes websites, posted a message
> to their support forum and googled like crazy and
> found no answers. I've worked on this all day, hoping
> I could figure it out, now I just want to know how to
> fix it. Thanks again.
> 
> -Steve
> 
> 
> 		
> __________________________________
> Do you Yahoo!?
> Yahoo! Mail is new and improved - Check it out!
> http://promotions.yahoo.com/new_mail
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
