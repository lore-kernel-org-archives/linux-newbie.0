From: wuzhouhui <wuzhouhui14@mails.ucas.ac.cn>
Subject: Re: what happened if kernel version is different from module build
Date: Mon, 16 Oct 2017 09:45:36 +0800
Message-ID: <14ec0232-272c-8205-bbd9-1929cc231b97@mails.ucas.ac.cn>
References: <3665C4BC-EACC-4527-85AA-2D8D6F107499@mails.ucas.ac.cn>
 <CAPQTdvyVuggihiTPbyuQ0zL87C59HFAqXgbQK8mWyPHJeiD9dg@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CAPQTdvyVuggihiTPbyuQ0zL87C59HFAqXgbQK8mWyPHJeiD9dg@mail.gmail.com>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"; format="flowed"
To: Rohith Seelaboyina <rohith.476@gmail.com>
Cc: linux-newbie@vger.kernel.org


On 10/15/2017 11:25 PM, Rohith Seelaboyina wrote:
> It can't be installed due to version mismatch
In fact, I did load it successfully in different kernel. What I worried 
is that the
Module.symvers and System.map of these two kernel are different, and module
building needs them. I only fix some bugs of schedule code:

diff -uprN linux-2.6.32-431.el6.6.vsds.x86_64.orig/ 
linux-2.6.32-431.el6.6.vsds.x86_64/|diffstat  -p0
  linux-2.6.32-431.el6.6.vsds.x86_64/kernel/sched.c      |   26 ++---
  linux-2.6.32-431.el6.6.vsds.x86_64/kernel/sched_fair.c |   76 
++++++++++++-----
  2 files changed, 69 insertions(+), 33 deletions(-)
>
> On Oct 15, 2017 7:39 PM, "wuzhouhui" <wuzhouhui14@mails.ucas.ac.cn 
> <mailto:wuzhouhui14@mails.ucas.ac.cn>> wrote:
>
>     Suppose I compile a kernel module in kernel 2.6.32-431.el6.x86_64,
>     but I load it
>     successfully in kernel 2.6.32-432.el6.x86_64. Can this module
>     works properly? Or
>     whether it is harm to system?
>
>     Thanks!
>     --
>     To unsubscribe from this list: send the line "unsubscribe
>     linux-newbie" in
>     the body of a message to majordomo@vger.kernel.org
>     <mailto:majordomo@vger.kernel.org>
>     More majordomo info at http://vger.kernel.org/majordomo-info.html
>     <http://vger.kernel.org/majordomo-info.html>
>     Please read the FAQ at http://www.linux-learn.org/faqs
>     <http://www.linux-learn.org/faqs>
>

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
