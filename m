From: "Marco Calistri" <ik5bcu@tin.it>
Subject: Re: switching window managers
Date: Tue, 25 Mar 2003 23:08:57 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030325220857.15695.qmail@linux.ik5bcu.ampr.org>
References: <200303242143.h2OLhMo7020556@hartford-hwp.com>
Reply-To: ik5bcu@tin.it
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200303242143.h2OLhMo7020556@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org


On 24-Mar-2003 Haines Brown wrote:
> Marco,
> 
> Thanks! You've no idea how I've struggled to get this information.
> 
>> Hello Haines,AFAIK if you remove your ~/.gnome* dirs. then you will be able
>> to
>> restart a fresh gnome desktop...
> 
> I presume that since gnome is set as my desktop manager, these files
> would be regenerated without my having to restart gnome explicitly. 
 
Hello Haines,I suggest you login on init 3 (text) then remove the above
dirs,then you issue startx to re-create the folders.

>> > Do you happen to know the name of the gnome desktop switcher
>> > executable...
>> 
>> switchdesk-gnome-3.9.8-2
> 
> The terminology leaves my head spinning. There's the RedHat desktop
> switcher application, which is what you refer to. But then there's a
> Workplace Switcher, which  is a pager. This is what is broken and what
> I meant. I apologize.

By the way I won't bear you on wrong directions since I'm talking with my
RHL-7.3 experience,not about my RHL-8.0 which I used very seldom.

>> Furthermore an useful hint from an old message:
>> 
>> "Slough, Kelle" <Kelle.Slough@dsionline.com> writes: 
>> > Unfortunately though, I cannot get the panel back.  Does anyone have any
>> > ideas on how I can restore the panel?  As an FYI, I did install the latest
>> > fixes afterwards and that has not corrected the problem.
>> 
>> Just run the panel in a terminal (type "panel") and then type
>> "save-session" after the panel starts.
>> 
>> Havoc
> 
> I assume that "havoc" is the person's name, not what happens if you
> follow the advice ;-).
> 
> Haines

Yes he is Havoc Pennington an "X" desktop developer.

Best Regards

Marco

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
