From: Ray Olszewski <ray@comarre.com>
Subject: Re: Convert PBM to ascii text??
Date: Mon, 08 Mar 2004 13:09:58 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040308130547.01f63e50@celine>
References: <20040308204535.GA1010@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040308204535.GA1010@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:45 PM 3/8/2004 -0500, Hal MacArgle wrote:
>Greetings: Been reading and viewing tons of stuff but can't seem to
>find if there's a "simple" solution I need..
>
>Would like to scan a normal black on white typewritten page to a PBM
>file, "P4", then convert that to a standard text ascii file.. (My
>scanner is a HP ScanJet IIC, that defaults PBM)
>
>My "pen friend" insists on sending me snail mail and letting me reply
>via eMail.. I would like to import part of his text into my document
>- as is usually done..
>
>Any suggestions as to an easy solution? Both the OCR programs and
>PBMPlus package are, seemingly, way too powerful for my simple
>requirement.. (Or are they?) <grin>

Well ... if you want to convert the text in a graphic image .... whether it 
is on a page or in a file ... to ascii text, you need to do OCR. That's 
what "OCR" means, after all. I haven't done this on Linux myself, but my 
instinct would be to try gocr for it, especially since the package docs for 
it say it reads pbm files (among other types).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
