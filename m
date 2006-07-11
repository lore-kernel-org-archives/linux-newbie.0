From: ali shahrokni <shahrokni@gmail.com>
Subject: Re: automatic service start at startup
Date: Tue, 11 Jul 2006 19:55:48 +0100
Message-ID: <44B3F434.2020307@gmail.com>
References: <44B2A02F.5040304@laposte.net> <44B2C769.4090607@gmail.com>	 <44B3CAE2.8050803@laposte.net> <6b4e42d10607111127h2a4af2ddyfc8150884848d8f8@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <6b4e42d10607111127h2a4af2ddyfc8150884848d8f8@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Om." <om.turyx@gmail.com>
Cc: linux-newbie@vger.kernel.org


debian. I tried rcconf, but it didn't change anything!


Om. wrote:

> On 7/11/06, ali shahrokni <shahrokni@gmail.com> wrote:
>
>> Thanks guys,
>> using your help, I could solve the problem the neat way: I just had to
>> set a higher number (99, instead of 19) to the symlink to autofs, in
>> rc2.d... I don't know exactly why it had to be higher, but now it works
>> fine! thanks!
>
> Which distro are you using? If it is RH/FC,
> you can do
> # serviceconf &
> Using standard commands should be better else you may end up breaking
> something when you try to upgarde
> HTH,
> Om.
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
