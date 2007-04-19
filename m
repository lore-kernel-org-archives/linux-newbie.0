From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: vmalloc and page faults (was: memory descriptor and kernel threads)
Date: Thu, 19 Apr 2007 17:55:14 +0530
Message-ID: <b115cb5f0704190525o252cc0e9ua84949dff7706542@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=Ad9O2+q5xSL4Sr/pN0Pl5kJ3MIyVc8HR2GXF+D7pIstmF2A1zSTRTe4sBGOICxb078isTHcwXROb3JSvnq07WnhWrLu6On13vSOCoAjPjmx9+TZywzxCKwvVVQxxguFPVhorlqo7jcCBVjZYx201AORqG6wu0AiRiKl1IjueVxQ=
Content-Disposition: inline
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

Hi,

> ... the kernel thread is as sensitive as the kernel itself
> for the page faults. It _should not_ fault, unless ofcourse if its a
> vmalloc'ed area .. and that happens every other kernel path anyway....

I have a doubt about the vmalloc'ed memory. Is the vmalloced chunk of
memory allowed to be swapped out? Can it / Does it? My doubt arises
from the fact that the memory for the loadable modules at module load
time is allocated using vmalloc() ...

Thanks,

Rajat

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

