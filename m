From: Ray Olszewski <ray@comarre.com>
Subject: Re: keeping static ip address alive between restarts
Date: Fri, 20 Feb 2004 09:26:25 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040220091632.01fbb8e0@celine>
References: <fc.004c4e000050d4a1004c4e000050d4a1.50d523@palmertrinity.o
 rg>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc.004c4e000050d4a1004c4e000050d4a1.50d523@palmertrinity.o
 rg>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:30 AM 2/20/2004 -0500, William Stanard wrote:
>Running Red Hat 8.0 (2.4.18-14) on an old Acer I have keyed
>  ifconfig eth0 192.168.0.1
>to set my box's ip address for my small LAN. What additional command
>should I use to write that address permanently, so that I do not have to
>ifconfig each time I restart? I have read and reread O'Reilly's Running
>Linux and Learning Red Hat Linux; is there no process whereby the settings
>are written to the correct files for startup, or must I (using vi, for
>example) edit certain files myself?


As you've gathered from your reading, there is no *standard* procedure for 
doing this in Linux/Unix (except in terms too general to be of use). Each 
Linux distro has a different approach to automating this process, and I 
don't know which of them Red Hat uses.

As a general matter, there will be a script run by the init process that 
starts up networking. It may run the ifconfig command directly (as 
Slackware does, for instance) or by way of some external program (as Debian 
does, using the command "ifup -a", which in turn relies on the text file 
/etc/network/interfaces).

I waited awhile before responding to you in the hope that some Red Hat user 
here would give you the RH-specific answer. Perhaps someone still will. If 
not, you'll need to look through the init scripts on your system (even the 
locations of these scripts varies from distro to distro, but you can track 
them down by looking for the base script listed in /etc/inittab for 
single-user mode, then for the default runlevel) for the one that starts 
networking.

Some versions of RH have a setup interface that can be used to start 
networking in a way that will do the init-script editing for you. If yours 
doesn't include that, you will have to edit some file using vi (or your 
text editor of choice).

Sorry I cannot be more specific here ... as I say, you really need to hear 
back from someone else who uses RH 8.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
