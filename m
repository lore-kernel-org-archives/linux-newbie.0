From: glenn <genright@paradise.net.nz>
Subject: Re: Networking issue
Date: Sat, 4 Jan 2003 07:58:05 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200301040758.05497.genright@paradise.net.nz>
References: <5.1.0.14.1.20030102082846.021bb750@celine> <5.1.0.14.1.20030102200401.02126210@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030102200401.02126210@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Fri, 03 Jan 2003 5:24 pm, Ray Olszewski wrote:
> Ok, mystery solved. At least for the pings. Your system is set for some
> reason not to reply to pings (is this a Mandrake default? does anyone here
>

Mandrake runs a batch of scripts under the name of msec which maintins a 
particular security level (1-6 i think). This can be configured through 
'Mandrake Control Center' under security. If the level is set too high then 
the default permisions will prevent normal internet connectivity as designed 
for server use. Adjust to a lower level as per the instruction in the 
Mandrake 'Control Center'. You will need root access to do this.

msec pereodically runs and if it finds anything at odds with its permision 
levels then they are reset back.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
