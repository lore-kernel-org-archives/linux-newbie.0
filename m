From: Ray Olszewski <ray@comarre.com>
Subject: Re: HowTo: Mount a volume over Internet?
Date: Tue, 10 Sep 2002 14:10:45 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020910140752.02285ec0@celine>
References: <002101c25909$821b4c40$c5000a0a@c0002>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002101c25909$821b4c40$c5000a0a@c0002>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Ola Theander <ola.theander@otsystem.com>, linux-newbie@vger.kernel.org

In principle it is possible to do this with NFS mounts. In practice, doing 
it raises significant security risks. And the firewalling present at either 
end might (should, if the firewalls are configured to do a good job) 
interfere with it.

If you really need to do this, I'd recommend your looking into doing it 
over an encryped link (a true VPN, or at least an SSH tunnel).

At 10:34 PM 9/10/02 +0200, Ola Theander wrote:
>Dear subscribers.
>
>I would like to know if it's possible to mount a volume over the
>Internet? I study at a University here in Sweden where they use SUN
>computers as workstations. The file system is AFS (Andrew File System).
>What I would like to do is to mount my home directory at the University
>on my local computer at home, instead of connecting with SSH and coping
>files back and forth. Of course, it doesn't need to be a permanent
>mount, only as needed.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
