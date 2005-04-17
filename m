From: James Miller <jamtat@mailsnare.net>
Subject: Re: help with joining files
Date: Sun, 17 Apr 2005 13:35:18 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504162230350.5717@localhost.localdomain>
References: <5.1.0.14.1.20050416121116.01f63160@celine>
 <Pine.LNX.4.21.0504161353590.542-100000@hestia> <Pine.LNX.4.21.0504161353590.542-100000@hestia>
 <5.1.0.14.1.20050416121116.01f63160@celine> <5.1.0.14.1.20050416144139.01fdd820@celine>
 <Pine.LNX.4.61.0504161720320.5717@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504161720320.5717@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I've discovered that ls -tr is what I need to get the files listed in the 
right time sequence (time of creation). ls -t gives, for example:

Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.4_Rondo_-_Andante.mp3
Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.3_Minuetto.mp3
Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.2_Allegro_con_spirito.mp3
Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.1_Amoroso.mp3

while ls -tr gives:

Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.1_Amoroso.mp3
Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.2_Allegro_con_spirito.mp3
Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.3_Minuetto.mp3
Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.4_Rondo_-_Andante.mp3

(assuming the directory where the command is issued contains only these 
files). Presently, since those are just excerpts and there are many more 
files in that dir, I am navigating to that dir and doing ls -tr 
>ls-tr_date.txt. I then go into that text file with an editor adding "cat" 
at the beginning of the piece, taking out carriage returns between 
movments, and adding >~/MyMusic/name-of-piece.mp3 at the end of the 
movement. Using the above output, this would look like;

cat Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.1_Amoroso.mp3
Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.2_Allegro_con_spirito.mp3
Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.3_Minuetto.mp3
Boccherini_-_Quintet_for_Strings_in_E_G.275_Mvt.4_Rondo_-_Andante.mp3 
>~/MyMusic/Boccherini_-_Quintet_for_Strings_in_E_G.275.mp3

Then I cut and paste this into an xterm wherein I have navigated to the 
dir containing the files, then hit return. This is as streamlined as I've 
been able to get with this so far. Still time-consuming and a bit 
cumbersome, but I've progressed a little.

James

PS Again, the above excerpts, where movement number is actually given, are 
exceptions to the rule. I just selected output that has numbers since I 
thought it would more readily demonstrative of what I'm doing.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
