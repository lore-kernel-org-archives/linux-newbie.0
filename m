From: Franklin Chua <fchua@ntsp.nec.co.jp>
Subject: Re: how to replace three spaces with tab
Date: Sat, 04 Jun 2005 13:11:00 +0800
Message-ID: <42A137E3.6010507@mnl.ntsp.nec.co.jp>
References: <Pine.LNX.4.61.0506021711350.7223@localhost.localdomain> <200506021740.01816.eric@cisu.net> <Pine.LNX.4.61.0506021831040.7223@localhost.localdomain> <200506021907.06291.eric@cisu.net>
Reply-To: fchua@ntsp.nec.co.jp
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200506021907.06291.eric@cisu.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I don't know if this will work for you

unexpand -all -tabs=3 file1 > file2
or
unexpand -a -t=3 file1 > file2

:-)


Eric Bambach wrote:

>On Thursday 02 June 2005 06:35 pm, James Miller wrote:
>  
>
>>On Thu, 2 Jun 2005, Eric Bambach wrote:
>>    
>>
>>>sed 's/   /\t/' largefile.txt > largefile.edited
>>>
>>>Notice that s/(Three spaces)/(special Tab character sequence)/
>>>
>>>This will replace ALL occurances of 3 spaces in your file. Make sure you
>>>dont have 3 spaces in any other context or those will be changed too. It
>>>will output to a new file in case i didnt get it right ;)
>>>      
>>>
>>Thanks for that command line tip, Eric. Meantime, I discovered that xedit
>>tells you, in it's search-and-replace routine, how to enter a tab
>>sequence: you hit ctrl-q and then tab while you're in the field where you
>>input the replacement text. This seems to have worked quite well. Why
>>xedit, of all editors, should have this feature? Dunno. Are there yet
>>other ways of doing this?
>>
>>    
>>
>
>Well the way I said was one of easiest off the top of my head. I suppose 
>search and replace features would have to be on an editor by editor basis.
>
>There are plenty of ways to do everything in linux. Im sure someone could come 
>up with a perl one or two liner for that. A search-and-replace in an editor 
>like you said. Im sure there are a few more command line tools that would 
>work too. tr? I think that only does single characters though. Anything 
>command-line related that doesnt use sed escapes me for right now though.
>
>
>  
>
>>Thanks, James
>>
>>    
>>
>>>On Thursday 02 June 2005 05:11 pm, James Miller wrote:
>>>      
>>>
>>>>Here's another example of what looks like something that should be
>>>>fairly straightforward but which I've been struggling with for at least
>>>>an hour and cannot find an answer. I ran into this before and was
>>>>similarly stumped, so I did it all manually. This time I just want to
>>>>get it done and finally find out the secret, my ignorance, or whether
>>>>this really is one of those irresolvable riddles of (Linux) life.
>>>>
>>>>I have a document that consists of about 5,500 entries, each on its own
>>>>line. If this matters, it's a block file to block out advertising by
>>>>resolving certain domains to the localhost (127.0.0.1). In each line of
>>>>the file as I saved it, there are three space characters between the IP
>>>>and the domain name (damn that elinks browser for doing that!). For my
>>>>router to effectively use the file, each of those 5,500 three-space
>>>>sequences need to be changed to a tab sequence--like when you press the
>>>>tab key while typing in a document. How can I automate this?
>>>>
>>>>I know how I'd do it in Word, but I've sworn off that sorry excuse for a
>>>>piece of software (those guys in Redmond will be jumping with glee when
>>>>they read this one: man with naive open source principles walks off
>>>>Linux precipice). None of the Linux equivalents I've tried (Abiword,
>>>>OpenOffice, gedit, nano) gives any indication of how a tab character can
>>>>be inserted in their search-and-replace feature. There are no formatting
>>>>characters to select, as they call them in smarmy M$ speak. The
>>>>search-and-replace dialogues all understand hitting the tab key as the
>>>>user wanting to move to the next field, not as data entry. There's
>>>>probably a simple command line way to do this, but if I were adept
>>>>enough at simple command line stuff, I'd have found it already. Can
>>>>anyone offer pointers on how to automate replacement of the 5,500
>>>>three-space sequences with a tab sequence?
>>>>
>>>>Thanks, James
>>>>
>>>>-------------------------------------------------------------------+
>>>>If you hit the "reply" button in your email client to respond to my
>>>>message, be sure to remove the REMOVETHIS portion of my email address
>>>>(inserted as an anti-spam tactic). If you don't, your message won't
>>>>reach me.
>>>>-------------------------------------------------------------------+
>>>>-
>>>>To unsubscribe from this list: send the line "unsubscribe linux-newbie"
>>>>in the body of a message to majordomo@vger.kernel.org
>>>>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>>>Please read the FAQ at http://www.linux-learn.org/faqs
>>>>        
>>>>
>>>--
>>>----------------------------------------
>>>--EB
>>>
>>>      
>>>
>>>>All is fine except that I can reliably "oops" it simply by trying to
>>>>read from /proc/apm (e.g. cat /proc/apm).
>>>>oops output and ksymoops-2.3.4 output is attached.
>>>>Is there anything else I can contribute?
>>>>        
>>>>
>>>The latitude and longtitude of the bios writers current position, and
>>>a ballistic missile.
>>>
>>>                --Alan Cox LKML-December 08,2000
>>>
>>>----------------------------------------
>>>-
>>>To unsubscribe from this list: send the line "unsubscribe linux-newbie"
>>>in the body of a message to majordomo@vger.kernel.org
>>>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>>Please read the FAQ at http://www.linux-learn.org/faqs
>>>      
>>>
>>-------------------------------------------------------------------+
>>If you hit the "reply" button in your email client to respond to my
>>message, be sure to remove the REMOVETHIS portion of my email address
>>(inserted as an anti-spam tactic). If you don't, your message won't
>>reach me.
>>-------------------------------------------------------------------+
>>    
>>
>
>  
>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
