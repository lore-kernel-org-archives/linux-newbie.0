From: Ray Olszewski <ray@comarre.com>
Subject: Re: renaming really long filenames
Date: Sun, 11 May 2003 14:44:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030511143612.01f8d998@celine>
References: <5.1.0.14.1.20030510082110.01eae2b0@celine>
 <20030510100903.GA1586@localhost.localdomain>
 <5.1.0.14.1.20030510082110.01eae2b0@celine>
 <5.1.0.14.1.20030510091650.01eae530@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EBEBD49.2D45C5FE@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:14 PM 5/11/2003 -0400, Chuck Gelm wrote:
>  Howdy, Y'all:
>
>  I have some very long filenames that I would like to shorten.
>The filenames contain 'spaces' and some characters with tics or
>apostrophes, and tildes over them.  I tried to change them from
>a console session, but I don't know how to generate those special
>characters from the keyboard

You precede the special character with a backslash, in general. Sometimes, 
you put the name in quotes instead of, or in addition, to that. Examples:

touch "some name"
         will create a file with the two-word name "some name"

mv some\ name some\ other\ name
         will change its name to the 3-word name "some other name".

>...and I really don't want to type
>the long filenames anyway.  :-|
>OBTW, I have no GUI (X windows) on this computer.
>
>  Is there a way to remove all characters < 023h && > 06fh
>from these filenames?
>
>find - sed - mv  ???

Well, if I had this problem, I'd use a Perl program to iterate through the 
filenames in the directory, change each one to its special-character-free 
equivalent, and do a mv from the old name to the new name. Using Perl would 
also give me a language powerful enough easily to check each revised name 
for uniqueness before doing he mv, so I didn't accidently overwrite a file.

Chapter 9 of _Perl Cookbook_ (an ORA book) has some examples of how to use 
Perl to process filenames, though on a quick scan, I didn't see an example 
that was an exact fit to your problem.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
