From: Jeremy Abbott <jkbullfrog@comcast.net>
Subject: Re: aterm pseudo transparancy tint
Date: Wed, 19 Jan 2005 10:33:40 +0000
Message-ID: <41EE3784.7060506@comcast.net>
References: <41ED13B5.8000903@comcast.net> <41ED16B9.3080206@comcast.net> <41EE8049.9090507@comcast.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41EE8049.9090507@comcast.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Conway S. Smith" <beolach@comcast.net>, linux-newbie@vger.kernel.org

Conway S. Smith wrote:

>-----BEGIN PGP SIGNED MESSAGE-----
>Hash: SHA1
>
>Jeremy Abbott wrote:
>  
>
>>Jeremy Abbott wrote:
>>
>>
>>    
>>
>>>Does anyone know if there is a way to set the tint color of an aterm 
>>>to be random?  Right now I am executing the following:
>>>
>>>aterm -tr -tint blue -trsb -rv -geometry 179x33 --font4
>>>
>>>I know I can write a script to randomize the color if I need to, I'm 
>>>just not sure how to implement it with the -tint switch.
>>>
>>>Thanks,
>>>Jeremy Abbott
>>>jkbullfrog@comcast.net
>>>
>>>
>>>      
>>>
>>It just occured to me that I can do this by writing a script to randomly 
>>choose from a list of aterm calls, rather than just randomizing the tint 
>>color.  I can do this if need be, but am still curious if just the tint 
>>color by itself can be randomized.
>>
>>
>>
>>Jeremy Abbott
>>jkbullfrog@comcast.net
>>
>>    
>>
>
>Make your script echo the randomly selected color on stdout, and
>surround it with back-quotes, like so:
>
>aterm -tr -tint `random_color.sh` -trsb -rv -geometry 179x33 --font4
>
>
>HTH,
>Conway S. Smith
>-----BEGIN PGP SIGNATURE-----
>Version: GnuPG v1.4.0 (GNU/Linux)
>Comment: Using GnuPG with Mozilla - http://enigmail.mozdev.org
>
>iD8DBQFB7oBFGL3AU+cCPDERAoQ2AKCd5iI4/NgSYHMoasE+nZ32Nwj5twCePnYx
>gUzIbyS8jcuv2+W0O5qUA08=
>=RD3q
>-----END PGP SIGNATURE-----
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>  
>
Thanks, I believe that will do the trick.

Jeremy Abbott
jkbullfrog@comcast.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
