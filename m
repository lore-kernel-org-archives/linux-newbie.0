From: Ben Kevan <ben.kevan@gmail.com>
Subject: Re: download file
Date: Tue, 16 Sep 2008 11:32:04 -0700
Message-ID: <200809161132.05015.ben.kevan@gmail.com>
References: <2e35683f0809161118q3153143kcc6221dc7dd27949@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:from:to:subject:date
         :user-agent:references:in-reply-to:mime-version:content-type
         :content-transfer-encoding:content-disposition:message-id;
        bh=3R9SrbpqZP6L7KvHprows11B8EOGsO4kp+tbqPTI+5k=;
        b=qVH6LyAZYaEXlmMn73+jirnatbEAgsLqbJXlcZ0dec9Yw44mphJWVEpunk0Zrbf74u
         DD91pZdMZHHB60KOSQdXw4dVVfXc3PtV+LQFaOwDf9LHfI1yDO9GHhkMkXvc4NGhK0mP
         aMLfLZO3fZxdn9szDYfYHb4sCetL5+867lgBc=
In-Reply-To: <2e35683f0809161118q3153143kcc6221dc7dd27949@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bhikkhu Mettavihari <draketools@gmail.com>, Linux Newbie <linux-newbie@vger.kernel.org>

On Tuesday 16 September 2008 11:18:36 am you wrote:
> hi,
>
> I am on linux
>
> How do I download a file from this site ?
>
> http://switch3.castup.net/cunet/gm.asp?ai=214&ar=1050wmv&ak=TY
>
> when I do
> $wget  http://switch3.castup.net/cunet/gm.asp?ai=214&ar=1050wmv&ak=TY
> then I get a small file by the name of  "gm.asp?ai=214" with content like
> this.
>
> <asx version="3.0">
>                                 <!-- GMX -->
>                                 <title>CastUP: Unknown Error</title>
>                                 <entry>
>                                         <title>Error: Unknown Error</title>
>                                     <author></author>
>                                         <ref href="http://" />
>                                 </entry>
>                         </asx>
>
>
> Regards
> Mettavihari
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

The reason you are getting that is because that's the file you're telling it 
to download. 

wget is working perfectly. 

Are you trying to have wget figure out where the asp file is pointing you to 
download? 


--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
