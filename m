From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: CD-ROM settings and hardware resources...
Date: Wed, 23 Oct 2002 20:36:18 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <0210232036180A.00497@unix.pa3gcu>
References: <MSGID_110=3a260=2f1_3db551be@linuxnet> <02102315493607.00497@unix.pa3gcu> <1035400822.31016.14.camel@localhost.localdomain>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035400822.31016.14.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bryan Simmons <bsimmo1@gl.umbc.edu>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Wednesday 23 October 2002 19:20, Bryan Simmons wrote:
> The CD-ROM in question is a CD-RW.  The system set it up as /dev/scd0
> which is not accessible from hdparam.  if I turn it into an ide device,
> I will no longer be able to write CDs with it.

You are missing the point, your cd-rom is no differnt to anyone else's, you 
set things like dma with hdparm but you do it on the underlting device which 
is /dev/hdX where X is a letter a b c or d.

a = master device primary controller.
b = slave   device primary controller.
c = master device sec controller.
d = slave   device sec controller.

hdparm /dev/hdc shows drive info;
hdparm -d1 /dev/hdc
will set dma to "on" on drive "c" as per above. /dev/scd0 is irrelavant.
 
>
> Does anyone know a way around this?  I can't hardly believe that all the
> millions of Linux users have been, and still are, stuck with CD-RWs that
> have to masquerade as SCSI devices.

There is no way around it, simply read the proper documentation, in this case 
the CD-Writing HOWTO.
IDE-ATAPI CD-RW devices only work with SCSI emulation as they only do in 
widows as well.
If you find a better way you can tell us millions how you did it then.

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
