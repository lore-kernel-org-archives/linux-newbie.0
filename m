From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: leading spaces in a text file.
Date: Sat, 24 Aug 2002 22:35:16 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208242226220.8397-100000@Consulate.UFP.CX>
References: <200208241646.g7OGkZi24408@hartford-hwp.com>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200208241646.g7OGkZi24408@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Haines Brown <brownh@hartford-hwp.com>
Cc: matthewstapleton@juno.com, linux-newbie@vger.kernel.org

Hi Matthew, Haines.

>> i have been formatting some texts for an online archive of e-texts.  
>> every once and a while i encounter a file that has leading spaces in
>> front of each sentence.  to remedy this problem i have used the 'tr'
>> utility to squeeze multiple occurrences of spaces.  this works very
>> nicely with the exception that the output file has a single leading
>> space at the beginning of each sentence. is there a better way of
>> doing this or of finishing this job?

> I don't know what you use as a text editor, but if it has a search
> and replace, you can readily remove multiple spaces. For example, I
> run emacs and use replace-string to replace a fixed number of
> multiple spaces at the beginning of each line with null.
> 
> This does not work with a single space at the start of each line,
> for replacing a single space with null removes the spaces between
> words. I don't know how to handle this situation.

There is an easy way to preprocess any text file such that all strings
of multiple tabs or spaces are replaced with a single space, and all
leading and trailing spaces are stripped. Use the following sequence...

    cat "$OLD" | tr -s '\t' ' ' | sed 's/^ //;s/ $//' > "$NEW"

...where "$OLD" is the file as it currently stands, and "$NEW" is the
file to create with the modified version in it. For reference...

 1. The command `tr -s '\t' ' '` says to replace all sequences of
    spaces and/or tabs with a single space.

 2. The command `sed 's/^ //;s/ $//'` says to remove a single
    leading and/or trailing space from each line.

...and the combination does exactly what you want.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
