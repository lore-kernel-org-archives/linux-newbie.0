From: Peter <peterg@fishinternet.com.au>
Subject: Re: Setting quota on user's home folders?
Date: Fri, 18 Mar 2005 06:21:25 +1100
Message-ID: <1111087285.25539.9.camel@localhost.localdomain>
References: <20050316021308.55227.qmail@web53610.mail.yahoo.com>
	 <5.1.0.14.1.20050316155238.01f4fb98@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <5.1.0.14.1.20050316155238.01f4fb98@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On Wed, 2005-03-16 at 16:31 -0800, Ray Olszewski wrote:
> 
> For quotas to work, they have to be enabled in your kernel. Stock
> kernels 
> usually do not include quota capability, so this means a local
> compile.

I noticed, on running ` locate quota` , that these lines appear in my
output

/lib/modules/2.6.8.1-4-386/kernel/fs/quota_v1.ko
/lib/modules/2.6.8.1-4-386/kernel/fs/quota_v2.ko

I'm thinking this means quotas are supported by modules in this kernel,
and thus a `modprobe quota* ` or similar would suffice, rather than a
kernel recompile.

Is this correct? 

Just thinking this could save Eve and others a *lot* of time...

In Debian, I assume after using the modprobe command the module name
could simply be put in /etc/modules to make loading persistent across
reboots. ( Other distros like the Redhat variants would do this
differently, I suppose)

apt-get install quota

would then install what's necessary for the quota command...



Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
