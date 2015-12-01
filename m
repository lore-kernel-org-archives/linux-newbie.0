From: Jonathon Reinhart <jonathon.reinhart@gmail.com>
Subject: Re: Where do I pose login and password questions?
Date: Tue, 1 Dec 2015 17:05:20 -0500
Message-ID: <CAPFHKzf-6OucH2yRzUpsGVTaoVeHnm252yWGM-Bh2DaK=Y8brg@mail.gmail.com>
References: <CAKW856KdupHXEMTYTGa_byDTX8QaCy3yvez9h+7LpqgSzRCZyw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=NA52DDPwFNi1TyLb6uH51y7NSk8MFijW+sLYZRI+PV8=;
        b=bw/K6ea7Tj9iMLtV45zuPu/9BaSM3PdTJtjjzkiN3i4h3B830N+GH7FyxMDfJIlLoF
         zoOZ7NaKzzlcySF0f00yoBiqtXozM0jC6HNO64aX6GgS2FVLqBYcilT/CD2WBecJb7eA
         buMNVI+TKnHH7+LnykbYzbvCm/Hm3VZ3ah4PV7hbFqYy6niVErvJEiKm5q4aogblyJ/8
         I0+QYZ7sSmvpaQY2YJRG5DwCZKBMwLig2qoLeSjpy/ig3HgoBpK6Vlru9cAOPGsG1Yy0
         nRdNGacJ7SoVUx9QHd4EXtp0YENywnjoZp+H7nkHimtlfDH73Z909wTK24rJ5sJDZcd3
         yVZg==
In-Reply-To: <CAKW856KdupHXEMTYTGa_byDTX8QaCy3yvez9h+7LpqgSzRCZyw@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: iSpinn@gmail.com
Cc: linux-newbie@vger.kernel.org

Doug,

This is a Linux kernel mailing list; the Linux kernel knows nothing of
login methods, usernames, or passwords. The only thing the kernel
deals with are process UIDs and GIDs, which are set and read via the
(get|set)(uid|gid) and derivative system calls, as well as file/device
permissions. Login and authentication are handled in userspace. I
suggest you read more about the login process:

http://www.comptechdoc.org/os/linux/howlinuxworks/linux_hllogin.html

Cheers,

Jonathon Reinhart

On Tue, Dec 1, 2015 at 4:32 PM, iSpinn <ispinn@gmail.com> wrote:
>
> I want to start an open discussion on the login process and password
> security, specifically introducing a new paradigm for what the login
> process and password format COULD look like, and how that different
> process might work and be implemented.
>
> What vger.kernel.org list is best to 1) let me do my due diligence to
> search through its archives for prior work already suggested and 2) if
> none is found, posing that new paradigm on that appropriate list for
> discussion?
>
> Thanks,
>
> Doug P
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
