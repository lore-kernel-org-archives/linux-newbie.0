From: Wladimir Foo <wfoo@linuxvoodoo.com>
Subject: Re: RPM packaging
Date: Sat, 28 Sep 2002 11:29:53 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209281129.53047.wfoo@linuxvoodoo.com>
References: <200209281329.29651.adam@luchjenbroers.com>
Reply-To: wfoo@linuxvoodoo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200209281329.29651.adam@luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: adam@luchjenbroers.com, linux-newbie@vger.kernel.org

> Where can I find tutorials on packaging my own RPMs?

try freshrpms.net - They have a short, yet helpful tutorial there. rpm.org the 
official site also has info there. I would suggest trying freshrpms.net first 
before moving on to the more technical info.

> Also, if I install a source RPM, is it as easily removable as a regular
> RPM. What known techniques are there to tie multiple packaging systems
> together (eg, Loki style game distribution).

We use apt (Advanced packing tool) found in Debian GNU/Linux together with RPM 
in our distribution (Voodoo Linux).  Using our version of kpackager it's 
closely resembles the Loki Update tool.

-- 
Linux hardware help		Linux News
Searchable HOWTO database	Linux gaming 
24-hour technical support	Linux Systems 
Linux compatible hardware/sales
http://www.linuxvoodoo.com     

perl -le '$_="75>42833<33.=3?,13406577073890:;90833<330690<3!!";tr[0-?][ 
YXOUIWLVETHDCNM];print'

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
