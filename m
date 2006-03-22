From: John Woodrow <samuraiinlove@gawab.com>
Subject: Re: skype
Date: Wed, 22 Mar 2006 11:44:48 +0100
Message-ID: <1143024288.4016.2.camel@localhost.localdomain>
References: <1143022954.3360.19.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1143022954.3360.19.camel@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: newbie linux <linux-newbie@vger.kernel.org>

On Wed, 2006-03-22 at 11:22 +0100, John Woodrow wrote:
> Hello Everyone,
> 
> dmesg | grep -i sound ............gives no reply.
> dmesg | grep -i sound* 
> application mixer_applet2 uses obsolete OSS audio interface
> application firefox-bin uses obsolete OSS audio interface
> 
> 
> I bring up volume control by right clicking on the speaker icon and
> selecting 'Open Volume Control'.  Everything is set to max including
> LOADS of things I don't understand like various PCM's, EMU10K1 PCM 1 to
> 32, EMU10K1 PCM Send 1 to 32.  If I mess with EMU10K1 PCM Send Routing 1
> it results in silence from either 1 or both speakers so I leave well
> alone but the other 31 are fine.  Sorry if I'm giving useless
> information but I don't know enough to distinguish.  None of them are
> muted.  I also have every channel turned up in alsamixer, so I think
> that's a yes to the question about whether I can invoke alsamixer.
> 
> [root'at'localhost /]# lsmod | grep snd
> bash: lsmod: command not found
> [root'at'localhost /]# lspci -v | grep -A 5 audio
> bash: lspci: command not found
> 
> 
> I looked for 'modules.conf' in /etc/ but could not find.  Using locate I
> got these results:
> 
> /etc/gnome-vfs-2.0/modules/mapping-modules.conf
> /etc/gnome-vfs-2.0/modules/ssl-modules.conf
> /etc/gnome-vfs-2.0/modules/default-modules.conf
> 
> 
> I have man arecord.  There is no squeal when I place the mic close to
> the speaker.
> 
> Thanks guys,
> 
> John.
> 

> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

*I'm sorry, I made a mistake, the fourth line of the above text should
read 'dmesg | grep -i audio'

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
