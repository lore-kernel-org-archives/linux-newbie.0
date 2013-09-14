From: cr <cr@orcon.net.nz>
Subject: Re: Which distro?
Date: Sat, 14 Sep 2013 13:13:22 +1200
Message-ID: <201309141313.23034.cr@orcon.net.nz>
References: <l0v3jt$47e$1@ger.gmane.org> <52332713.7000903@NorthTech.US>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <52332713.7000903@NorthTech.US>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: Text/Plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Saturday 14 September 2013 02:54:11 Bradley D. Thornton wrote:
> On 09/13/2013 06:23 AM, Peter Nabbefeld wrote:
> > Hi all,
> > 
> > which linux distribution would You recommend?
> 

(snippage) 


> 4.) Debian: http://cdimage.debian.org/cdimage/weekly-builds/
> 
> Debian is also widely considered to be, along with Slackware, one of the
> most stable and reliable Linux distros. Running Debian Testing means you
> are using it as a rolling release, and although it's not quite as easy
> as maintaining Slackware or LMDE, it is the core that LMDE is based on
> and will serve you quite well for many years w/o ever having to perform
> another installation.
> 
> Whether you choose LMDE (based on Debian Testing) or Debian Testing,
> making sure your distro is current involves the simple use of the same
> tools
> 
> # apt-get -y update
> 
> aptitude and synaptic are also tools you can use.
> 
> The problem with Debian is that *current*, isn't always as current as
> many people, including yourself, might like - This is by design, and
> intended as such for the sake of stability (the very same reason all of
> the ewboontew variants are so unstable).

Depends whether Peter means 'up-to-date' or 'bleeding-edge'.   I've always run 
Debian Stable (currently Squeeze), and that's always very easy to install and 
update.   For a newbie, Stable may be a better starting point than Testing.

If I want a particular very new capability that Stable doesn't have I usually 
Google for it and see if I can download a package from a third-party site 
(like, say, deb-multimedia.org).   

One suggestion, which may make windowshopping a bit easier whichever distro he 
finally settles on - make several partitions, install a known reliable distro 
in one partition to use for daily work like emails etc, and install the 
'trial' distro in another partition.   (And keep all user data in yet another 
partition separate from the OS).   You can multi-boot into whichever one you 
want with Grub.   Then of course, if the 'trial' distro turns out to be 
satisfactory, just switch to using that one. 

cr

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
