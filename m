From: "Ola Theander" <ola.theander@otsystem.com>
Subject: RE: The best way to backup a Linux workstation?
Date: Tue, 18 Mar 2003 22:37:37 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <002401c2ed96$9eecc6b0$7301a8c0@c0003>
References: <Pine.LNX.4.33.0303181304130.12864-100000@router.windsormachine.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.33.0303181304130.12864-100000@router.windsormachine.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Mike Dresser' <mdresser_l@windsormachine.com>
Cc: linux-newbie@vger.kernel.org

Hi Mike.
 
My tar line looks like this: tar zcvf dest-file source-dirs

/Ola

-----Original Message-----
From: linux-newbie-owner@vger.kernel.org
[mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Mike Dresser
Sent: den 18 mars 2003 19:05
To: Ola Theander
Cc: linux-newbie@vger.kernel.org
Subject: Re: The best way to backup a Linux workstation?


On Tue, 18 Mar 2003, Ola Theander wrote:

> Dear subscribers.
>
> I would like to know the recommended way to backup a Linux 
> workstation. Currently I use tar to pack a number of directories to a 
> single file which I save on a CD. One problem I've noticed with this 
> approach is that tar seems to ignore all hidden files i.e. files 
> beginning with a '.' and there doesn't seem to be a switch to change 
> this. This is a problem for me since some files, such as .profile, 
> that I want to backup is ignored.
>
> Any help on this matter would be greatly appreciated.
>
> Kind regards, Ola Theander
>

What does your tar line look like?  My tar backs up anything starting with a
., it's just a matter of having the right syntax.

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org More majordomo info at
http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
