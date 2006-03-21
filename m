From: chuck gelm <chuck@gelm.net>
Subject: Re: [Fwd: Re: skype]
Date: Tue, 21 Mar 2006 16:06:45 +0000
Message-ID: <44202495.7010305@gelm.net>
References: <1142969079.3586.0.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1142969079.3586.0.camel@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: John Woodrow <samuraiinlove@gawab.com>
Cc: linux-newbie@vger.kernel.org

Hi, John:

I am guessing that your sound card is not configured properly.

If Fedora Core supports 'dmesg' :-|
Are there any error messages about sound/audio in the output of

dmesg | grep -i sound
dmesg | grep -i audio
?

>Thankyou people,
>How can I check if the mic works locally?
>
Place the microphone near the speaker.  Do you hear a squeal?

>  I've got all the volume
>controls turned up to max in gnome and have used the echo123 service but
>with no luck.
>
In my Gnome workstation I click on - Applications - Volume Control -
Is the microphone level set to maximum?
Is the 'mute' button cleared?

>  My soundcard is a Creative Labs SB Audigy.
>
Do you know how to issue console commands as user 'root' ?
Do you know how to save the result of console commands to a text file?
Do you know how to paste this text into an email?

lsmod | grep snd
lsmod | grep snd > snd.txt

lspci -v | grep -A 5 audio
lspci -v | grep -A 5 audio > audio.txt

>  There is a
>skype forum with instructions on there
>( http://forum.skype.com/viewtopic.php?t=4489&sid=e246be97d68352110b84ca587836357b ) but to be honest not for lack of trying I'm nearly linux illiterate and can not understand what is going on.  I know this is my fault so I am not expecting a babysitter.
>
>I can not find modules.conf or modules.d/alsa that the guide speaks of.
>  
>
Where did you look?  How did you look?  I find my 'modules.conf' in "/etc/".
 /etc/modules.conf

Perhaps Fedora Core does not use 'modules.conf'.  :-|

HTH, Chuck

>
>Thank you all.
>  
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
