From: mike <mike@kevino.org>
Subject: Re: keyword for rivafb in XF86Confige file
Date: Fri, 24 Sep 2004 19:50:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4154DCE6.9080606@kevino.org>
References: <4EE0CBA31942E547B99B3D4BFAB34811107E93@mail.esn.co.in>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4EE0CBA31942E547B99B3D4BFAB34811107E93@mail.esn.co.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

What video card do you have?

Mike


Mukund JB. wrote:
> Hello All,
>  
> I am not able to make my X server work on rivafb (framebuffer module) which is loaded as a module on system.
>  
> I edited "XF86Config-4" file
> Driver "nvidia" . 
> Is it the right keyword to invoke the rivafb driver. I got this on same maillists. Where in the system can I find the database for these keyword stuff.
>  
> Later, when I say
> # startx , it fails.
> It says:-
> (EE) Failed to load module "nvidia" (module does not exist, 0)
> (EE) No devices detected.
>  
> What is going wrong here? Is there any other way through which I can tell the X server to use Framebuffer.
>  
> Please help.
>  
> My system configuration
> Os                linux 7.3(kernel - 2.4.18)
> Boot loader       lilo
> Default runlevel  3
> Framebuffer       rivafb
> X server version  4.2.0 
>  
> Regards,
> Mukund jampala
>  
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
