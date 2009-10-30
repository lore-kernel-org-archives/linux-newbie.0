From: Mulyadi Santosa <mulyadi.santosa@gmail.com>
Subject: Re: Questions about linux scheduler
Date: Fri, 30 Oct 2009 22:55:19 +0700
Message-ID: <f284c33d0910300855k3ec50ac3pc4cb4053e4341b52@mail.gmail.com>
References: <292693080910290808x69f25f6fgc49cb646c1c00466@mail.gmail.com> 
	<4AE9F3D2.8030502@nortel.com> <292693080910300320q1857cc70s73eb524c34af8233@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-kernel-owner+glk-linux-kernel-3=40m.gmane.org-S932543AbZJ3Pzf@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:in-reply-to:references
         :from:date:message-id:subject:to:cc:content-type;
        bh=P3mlwvKd9qI+hE6LfwzmWO6ENsT50mhN3HN5UDSF6lg=;
        b=ITUuJQPjZ5aeQy9NXhmLcRRs6lVBQUAxyVweIUj1CosqmVCvjsv3wlq6p5iLJfsuPV
         lhP4BeFT37rkp1DOGZR3Yw8D7D/j5qOdP8pqhdyjwlA1a6zfiU/DPPbJofzXLxFRQcs6
         ii54A4R2cb4mj53iSJ9fcK/FpK3DJ4f45QOtc=
In-Reply-To: <292693080910300320q1857cc70s73eb524c34af8233@mail.gmail.com>
Sender: linux-kernel-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Chris Friesen <cfriesen@nortel.com>, Linux Newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>, linux-kernel@vger.kernel.org

On Fri, Oct 30, 2009 at 5:20 PM, Daniel Rodrick
<daniel.rodrick@gmail.com> wrote:
> One last question ... the nice value of a process never changes
> (unless done explicitly using nice system call), right?
>

Correct.... notice that only root who is able to alter the nice value
of any processes freely. Normal user can only renice its own created
process and only increase its nice value (thus decreasing its static
priority)


-- 
regards,

Mulyadi Santosa
Freelance Linux trainer and consultant

blog: the-hydra.blogspot.com
training: mulyaditraining.blogspot.com
