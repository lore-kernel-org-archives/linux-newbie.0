From: Petre Bandac <g38@rdsbv.ro> (by way of Petre Bandac <g38@rdsbv.ro>)
Subject: Re: New module: kernel recompile?
Date: Wed, 2 Apr 2003 22:59:01 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304022259.01783.g38@rdsbv.ro>
Reply-To: g38@rdsbv.ro
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

make menuconfig - check there the right module

and then

make modules && make modules_install

I did it a few times and it went ok

HTH,

petre

On Wednesday 02 April 2003 17:43 Anno Domini, Amin wrote using one of his

keyboards:
> Hi, I've installed a new RH8.0 system after losing the old one.  Problem
> is, the fresh installation doesn't support my (Myson) Ethernet card, and I
> have to load the ``fealnx'' module to get it to do so.  And that module
> isn't already compiled and insertable.  So: is it possible to compile the
> module and then insert it into the kernel, instead of recompiling the whole
> kernel, as I had to do the last time?  (Not that I don't like recompiling
> the kernel; it just gets a little boring during the 5  hours it takes.)
>
> I've got the ``.config'' file from my previous RH8.0 installation (on the
> same system) and can put it up for anyone who's interested.
>
> Thanks,
> Yawar
>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

--
10:56PM  up  5:52, 2 users, load averages: 0.36, 0.31, 0.22

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
