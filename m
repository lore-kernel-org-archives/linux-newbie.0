From: "Raseel Bhagat" <raseelbhagat@gmail.com>
Subject: Re: system hangs momentarily every 4 mins 2 secs
Date: Sun, 27 Aug 2006 11:41:31 +0530
Message-ID: <f68850780608262311s4e071ebpa431ca617bec9b8f@mail.gmail.com>
References: <20060817141403.10351.qmail@web81707.mail.mud.yahoo.com>
	 <a9d9d0c00608171240g4537142etebe10abfc512434b@mail.gmail.com>
	 <1155859868.6787.8.camel@localhost>
	 <200608261255.33306.kloro2006@gmail.com>
	 <20060827012228.5549032E99@kevin.kevino.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060827012228.5549032E99@kevin.kevino.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi,

On 8/27/06, mike@kevino.org <mike@kevino.org> wrote:
> On Sat, 26 Aug 2006 12:55:33 -0700
> tom arnall <kloro2006@gmail.com> wrote:
>
> > My system hangs momentarily every 4 mins 2 secs. The event coincides with
> > a 'top' entry in which 'events/0' grabs 50-95% of cpu capacity. How can I
> > determine what is causing the event?

This is a long-shot but the last time I had the same problem it turned
out that there had developed a loose connection with the heat-sink and
processor on the motherboard.
As a result, the processor used to over-heat in about every 3 minutes
or so, the watchdogs would come into picture and cause the machine to
hang or reboot.... usually reboot.

Just give a quick check on your hardware before probing into the software side.


-- 
Raseel.
http://osd.byethost8.com
http://raseel.livejournal.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
