From: Ray Olszewski <ray@comarre.com>
Subject: Re: .prn to .txt conversion = ?
Date: Mon, 29 Mar 2004 20:54:03 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040329204727.01ef69d0@celine>
References: <200403281732.18531.sotl155360@earthlink.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403281732.18531.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:32 PM 3/28/2004 -0500, Frank Roberts - SOTL wrote:
>Hi All
>
>I would appreciate it if someone could explain to me what tools one may 
>use to
>convert MS dos .prn files whoses contents is all text to .txt files so that
>these files may be used in my linux box and I may through the Windows box
>out.


When you say "the content is all text", can you be a bit more exact? (I 
haven't used DOS for years and I cannot recall what the.prn extension 
signifies.)

If this is some sort of ASCII file, then it may be the case that all you 
need to do is convert the EOL characters from the DOS standard (ASCII 13) 
to the Unix/Linux standard (ASCII 10). The tool to do that has several 
names; on my (Debian) system, it is called dos2unix. Or, depending on the 
details of the file structure, you may have to do some extra reformatting. 
(If you have a short sample you can provide, feel free to send it to me 
offlist and I'll see what I can see.)

If this is some sort of graphics image file, you will need some sort of 
specialized converter. Karthik's response was an example of this, but only 
an example.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
