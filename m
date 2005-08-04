From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: RE: Running script on 2.6 fails
Date: Thu, 4 Aug 2005 10:13:38 +0530
Message-ID: <C349E772C72290419567CFD84C26E0170423C7@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Arturas Moskvinas <arturas.moskvinas@gmail.com>, jampala-baba <mukundjster@gmail.com>
Cc: linux-newbie@vger.kernel.org


Dear Arturas,

Please see the entire sbull_load script below

Regards,
Mukund Jampala

-------------------------- sbull_load script
-------------------------------

#!/bin/sh

function make_minors {

    let part=1

    while (($part < $minors)); do

      let minor=$part+$2

      mknod $1$part b $major $minor

      let part=$part+1

    done

}

# FIXME: This isn't handling minors (partitions) at all.

module="sbull"

device="sbull"

mode="664"

chardevice="sbullr"

minors=16

# Group: since distributions do it differently, look for wheel or use
staff

if grep '^staff:' /etc/group > /dev/null; then
    group="staff"
else
    group="wheel"

fi
 

# invoke insmod with all arguments we got

# and use a pathname, as newer modutils don't look in . by default

/sbin/insmod -f ./$module.ko $* || exit 1

major=`cat /proc/devices | awk "\\$2==\"$module\" {print \\$1}"`

# Remove stale nodes and replace them, then give gid and perms

rm -f /dev/${device}[a-d]* /dev/${device}

mknod /dev/${device}a b $major 0

make_minors /dev/${device}a 0

mknod /dev/${device}b b $major 16

make_minors /dev/${device}b 16

mknod /dev/${device}c b $major 32

make_minors /dev/${device}c 32

mknod /dev/${device}d b $major 48

make_minors /dev/${device}d 48

ln -sf ${device}a /dev/${device}

chgrp $group /dev/${device}[a-d]*

chmod $mode  /dev/${device}[a-d]*

------------------------- sbull_load script ENDS
--------------------------

-----




>> Dear all,
>>
>> I am right now working on understaning the 2.6 kernel BLOCK sbull
>> drivers implementation provided in the Linux book 3rd Edition book.
>>
>> I am OK with the block driver aspects. But, I am NOT able to run
>> sbull_load scruipt to create the device NODES.
>> when I tried running the script, i failed saying
>>
>> # sh sbull_load
>> : command not found
>> ' bull_load: line 4: syntax error near unexpected token '{
>> ' bull_load: line 4: '{
>
>Send part of the "script" so, we could analyse it...
>
>Arturas M.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
