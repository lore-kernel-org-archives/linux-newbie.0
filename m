From: Daniel Rodrick <daniel.rodrick@gmail.com>
Subject: Re: Questions about linux scheduler
Date: Fri, 30 Oct 2009 15:50:15 +0530
Message-ID: <292693080910300320q1857cc70s73eb524c34af8233@mail.gmail.com>
References: <292693080910290808x69f25f6fgc49cb646c1c00466@mail.gmail.com>
	 <4AE9F3D2.8030502@nortel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S1757016AbZJ3KUM@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :date:message-id:subject:from:to:cc:content-type
         :content-transfer-encoding;
        bh=A1JP4P/RHozXp3kVaLXa/UDxagC1UvNFoRsv9Fftpgg=;
        b=S7EvRGyxJ6Kz2Ix+WyzvbHuwk0Vl54yYILTYXbCcrr8WVFW9EG/Jsqo69eyWzqTQs/
         L6+PxCHM5YLg+1X4gh6/grRnuA+FG01zfVizJFYIcxUcwiknqK+2LsfarranQZTS+lFI
         QtBUFFQaLTmJR2c1fFwfxthIJgUpKCDjIbYZs=
In-Reply-To: <4AE9F3D2.8030502@nortel.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Chris Friesen <cfriesen@nortel.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>, linux-kernel@vger.kernel.org

Hi,

>
>> * A lower priority process will run only if there are no runnable
>> processes in priority above it - this automatically means that all R=
T
>> processes get to run before non-RT processes.
>
> True for RT, not true for non-RT. =A0In the current scheduler the non=
-RT
> tasks are stored in a time-ordered structure rather than the 40
> runqueues that were used before. =A0A non-RT task will run once it be=
comes
> the most "urgent" task based on its nice level, how much cpu time it
> uses, and how long it's been since it ran last relative to other task=
s
> on the system.

One last question ... the nice value of a process never changes
(unless done explicitly using nice system call), right?

Thanks,

Dan
