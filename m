From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Re: A tough C construct in Linux Kernel's implementation
Date: Mon, 24 Apr 2006 11:22:37 +0530
Message-ID: <b115cb5f0604232252y7469b578vd3dac1c370a2c0a4@mail.gmail.com>
References: <5f3d30900604232224h22e80541p8095c473abc82d9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5f3d30900604232224h22e80541p8095c473abc82d9@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Arijit Das <arijit79@gmail.com>
Cc: linux-newbie@vger.kernel.org

>
> #define offsetof(TYPE, MEMBER) ((size_t) &((TYPE *)0)->MEMBER)
>
> is returning the "Offset of a Memeber inside a struct/class Type". I
> didn't logically understand how is that happenning...:-(
>
> I expect the outcome of &((TYPE *)0)->MEMBER to be the address of the
> member 'MEMBER' of type 'TYPE'. Now, how does that address becomes
> offset has totally gone out of my understanding...
>

You are right ... &((TYPE *)0)->MEMBER is the address of member
"MEMBER" of type "TYPE". But consider that the (base) address of the
structure of type "TYPE" is NULL (0) as shown in above expression, and
hence the address of "MEMBER" is nothing but the offset.

An example:

Say you have:

struct student {
  int roll no;
  int age;
}

if you write offsetof(student, age), it converts to:

((size_t) &((student *)0)->age)

= ((size_t) &((student*)NULL)->age)

= ((size_t) 4 )    (Considering int = 4 bytes)

=4 = offset

Regards,

Rajat
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
