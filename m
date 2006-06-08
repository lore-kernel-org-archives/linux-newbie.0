From: chuck gelm <chuck@gelm.net>
Subject: Re: AT&T/sbcglobal setup for Linux
Date: Thu, 08 Jun 2006 18:55:12 -0400
Message-ID: <4488AAD0.8060509@gelm.net>
References: <W8713125225284261149787813@mail.mailsnare.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <W8713125225284261149787813@mail.mailsnare.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:

>This is just an attempt to get some information out there about how Linux users can get and, most importantly register for, AT&T/sbcglobal's DSL service. They're running a special currently for $13/mo. The problem is the setup utility they send, that includes a registration wizard, is a Win (or Mac) program. So, once you've got your kit (DSL modem, filters, etc), how can you create/register your account so you get a uname and password for PPPoE authentication? I thought about trying to run the installation disk in a Win install in qemu, but it didn't work for me because it couldn't detect the modem through the virtual NIC. I thouhgt of WINE but, despite the fact that it's gone from alpha to beta, it's as broken on my system (Ubuntu) as any alpha release ever was. In short, I couldn't run the necessary executables under WINE. I finally managed to discover that there is an online registra
 tion procedure for new AT&T/sbcglobal DSL accounts. The routine uses alot Java, so if you wanna do this be prepared with a java-enabled browser. Once you have access to such, just go to https://sbcreg.sbcglobal.net and go through the registration procedure. Despite the fact that I was unable to complete the process owing to some glitches with their web programming (couldn't download some patch they thought I needed, and the continuation page [resume_dsl] was blank), I was still able to authenticate using the uname/passwd I had managed to enter earlier in the registration procedure. Other Linux users may run into the same problems I had, so I wanted to make this info available for them.
>
>James
>  
>

Hi, James et allia:

 I used Roaring Penguin and entered my username and password into
the configuration file.

HTH, Chuck


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
