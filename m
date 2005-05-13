From: "J." <mailing-lists@xs4all.nl>
Subject: Re: internet access through proxy...
Date: Fri, 13 May 2005 10:07:56 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0505130951120.533-100000@hestia>
References: <652016d3050513003631e2aff0@mail.gmail.com>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <652016d3050513003631e2aff0@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 13 May 2005, Manish Regmi wrote:

> On 5/12/05, J. <mailing-lists@xs4all.nl> wrote:
> > 
> > Is the proxy located or provided by your ISP or is it really running and
> > init'd by you on your pc or on your own local network [lan] ?
> 
> In a local network.
>  
> > SSH does not have a proxy variable that you can set, however there are
> > other ways you can achive this task. Search www.google/linux for `ssh
> > proxy' will turn up some scripts that use netcat to proxy your ssh tunnel
> > if you want to run a ssh proxy server on you lan.
> 
> I just wanted to access/upload my sourceforge pages. 
> using scp or ssh 
> Is there any possibility by using some sort of programs.

Ehm, yes ? With scp or ssh of course ? 
ssh access ..
~: ssh -l username projectname.sourceforge.net
scp access ..
~: scp files.txt username@projectname.sourceforge.net:~/.....

Or do you mean CVS over a secure tunnel ? For sourceforge generate a
new ssh key pair on your local system ; Something like: 
~: ssh-keygen -C <comment> -f identity
Now on your user page at SourceForge, you should find a place to upload
your SSH public key. Copy the file identity.pub (located in your .ssh
directory) into the text entry box on the page. Wait 6 hours... done,
You can now use CVS without any password usage over ssh. That is, if your
CVS client is correctly configured.

Hope this is answers your question..

> Thanks in Advance
> Manish Regmi

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
