From: "Theo. Sean Schulze" <tschulze@teamfinders.org>
Subject: Audacity compile problems
Date: Fri, 22 Nov 2002 18:28:58 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021122172858.GA28883@teamfinders.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: tschulze@teamfinders.org

Hello,

I am having problems compiling Audacity 1.0.0 on both a SuSE 8.0 and a Slackware 8.1 system.  I ran configure using `./configure --with-arts-soundserver --with-id3`.  If I don't touch the Makefile or any of the source, the compile fails with this error message:

snd/audioarts.c:14: kde/artsc/artsc.h: No such file or directory
make: *** [obj/snd/audioarts.c.o] Error 1

artsc.h does exist.  In fact, copies of it live at /opt/kde2/include/artsc/artsc.h and at /opt/kde3/include/artsc/artsc.h on the SuSE box.  On the Slackware laptop, I get the same message although artsc.h is at /opt/kde/include/artsc/artsc.h.

Changing the Makefile to add -I/opt/kde3/include or -I/opt/kde3/include/artsc in the 'CFLAGS=' line results in the same error message (on both machines).

Changing line 14 of snd/audioarts.c from "#include <kde/artsc/artsc.h>" to "#include </opt/kde3/include/artsc/artsc.h>" or "#include <artsc/artsc.h>" results in the following error message:

/usr/i486-suse-linux/bin/ld: cannot find -lartsc
collect2: ld returned 1 exit status
make: *** [audacity] Error 1

I know that questions like this (not finding includes) have come up before, but I don't remember how they were answered.

Since this happens on both the SuSE and the Slackware system, I am pretty sure this is caused by either something the SuSE system and the Slackware system have in common or a fault in the audacity source.

BTW, I did install Audacity from the SuSE 8.0 CDs.  I tries to launch and then seems to die silently.  At least, there was nothing written to the console when it went.  Guess I should check /var/log/messages the next time I try to launch it.

A related question: Has anyone on the list developed a successful method for transferring music from LPs to CDs?  That is actually the task I was trying to perform when all this started.  I have tried gramofile, but it only recorded one channel and playback was at the wrong speed.  I have not had time for any tweaking.

Cheers,
Sean

-- 
Theo. Sean Schulze
tschulze@teamfinders.org
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
