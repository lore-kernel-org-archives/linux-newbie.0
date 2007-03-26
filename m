From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: Re: files and directories with spaces in bash script
Date: Mon, 26 Mar 2007 12:05:52 -0400 (EDT)
Message-ID: <Pine.LNX.4.64.0703261203490.13397@localhost>
References: <Pine.LNX.4.64.0703261049190.13397@localhost> <4607EC2B.3010003@robind.de>
Reply-To: karthikv@Alum.Dartmouth.ORG
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4607EC2B.3010003@robind.de>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Robin Doer <robin@robind.de>
Cc: karthikv@Alum.Dartmouth.ORG, Newbie List <linux-newbie@vger.kernel.org>

On Mon, 26 Mar 2007, at 5:52pm, Robin Doer wrote to karthikv@Alum.Dartmouth.ORG:

> Karthik Vishwanath schrieb:
>>
>> #!/bin/bash
>> # set_idv3_tags.sh
>
> IFS=\n # Not tested!!!

Tried all variants:
IFS=\n
IFS="\n"
IFS='\n'
IFS='
'


They don't work.

>>
>> for directory in "$@"; do
>>   if [[ -d "$directory" ]]; then
>>     for f in `find $directory -iname '*mp3' `; do
>>       echo "found mp3 file: $f"
>>     done
>>   fi
>> done
>
>
> Bash uses the IFS variable for word splitting. (man bash)
>
> HTH,
> Robin
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
