From: ishare <june.tune.sea@gmail.com>
Subject: Re: seq in tcp protocol
Date: Sun, 24 Mar 2013 19:57:11 +0800
Message-ID: <20130324115711.GA9706@debian.localdomain>
References: <20130322133008.GA1348@debian.localdomain>
 <20130323133117.GB9539@thebe.jupiter.sigsegv.be>
 <20130324032932.GB23928@debian.localdomain>
 <CAOXuEsxyugU-Z2yVX-8T-OdAxJcxh0gWFMVhX0CNZqBHYDzS3Q@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=mnIILMrIse8ZqyG629N3SUtYJ2GWP9iHK2ajjs7nXYM=;
        b=eOg5/k2F8YOo4mMVG+1U1nVE6cT+gCsYN9h9NL4+AgdCbsxMQvQTN5HBWpHyJORRo4
         5fwFHoQFpVUBHwmPX4wrcYk8lMUKrvbv7wryvAj3iu3tmEho99GyOd5T1sGfmoq1dIUD
         kQpdd+XesGoJjvvPQlN7V/oZ6oKJ/BORaojraXIbAF2bUzgmNnlBjvDSjyA1EWb3aQwA
         5FKFaH78fTAY2lLYZcaoix9BcuVMLYsvIii6DLGMqYMAzZa1cGamlqRcUN33F//ALuZE
         ZCnjvoEJ19ZJWM6/NkHJccG66Zfotz+QbKj1p38/2EXvYjzctfewliluxStUx7ivoM7U
         7MpQ==
Content-Disposition: inline
In-Reply-To: <CAOXuEsxyugU-Z2yVX-8T-OdAxJcxh0gWFMVhX0CNZqBHYDzS3Q@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Aniruddha Bhattacharyya <aniruddha.aot@gmail.com>
Cc: linux-newbie@vger.kernel.org


 How does the sender decide how many packet is needed to transfer one buffer and 
 manager the seq orders of them ?

 thanks! 
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
