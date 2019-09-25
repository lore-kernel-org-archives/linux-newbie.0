From: Crt Mori <cmo@melexis.com>
Subject: Re: Hardware prerequisites for driver development
Date: Wed, 25 Sep 2019 10:32:02 +0200
Message-ID: <CAKv63utZ+JSL=PH10bQdCYbrzoy0XBc_+UrVNFwTS2dkyjjxOw@mail.gmail.com>
References: <20190925081836.GA22717@SARKAR>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <driverdev-devel-bounces@linuxdriverproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=melexis.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=BHSqfET/v0VOqVkRgYfeqgKZdLBryNUUngLfhvTg3eE=;
 b=Mvn+xFy1fsIUIn4KjRkB1jcDLVNlcbrjMuo777H8U2ogjy7MpktoZN4it0SCulFcjS
 F4yuMnUZAUpJKWQ5PYDcmJuDWzb+FW1LTIOQjBpdpT3glC3Bhg+o8d9BZVUVfyGOSdhR
 cidJtOJVwuxL74D6HIiRt+DC+pahQDIoXYDtwVEPYy/DI7IIKoSSm7k5dNq6yghQfKMe
 1TwMyHHJgemHj6Q4plTMm2od8/ie5IzTHUtfSyknzDPpS5Rg1i76AvJhe75KJiFLlMgt
 U4dZlVdSKZKF/9NqHs9TSRE93bEQGYMCDg+FkrQ7owqW5i9NVKI0PtqfkswuEosElCv5
 uVcw==
In-Reply-To: <20190925081836.GA22717@SARKAR>
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>
To: Rohit Sarkar <rohitsarkar5398@gmail.com>
Cc: Linux Iio <linux-iio@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, linux-newbie@vger.kernel.org

Hi Rohit,
There are many companies for hobbyists which sell sensors included in
IIO subsystem and for sure some electronic component store in your
local area. Price of sensor can be from 0.10 USD to 10 USD. Then you
plug this sensor to your Linux board (Beaglebone Black is Linux
Foundation preferred, although there are others including Raspberry PI
- can even be RPI Zero if you are on a budget, Odroid, Linaro, ...)
and you will need to provide correct voltage/current for the sensor.
Easiests is that you pick sensors which are 3.3V or 5V domains,
because you have pins on most Linux boards with this voltages and
these pins supply enough current for most iio sensors. Then you just
connect (wire) power pin on sensor to power pin on your board, and
then communication pins from sensor to board and ground from sensor to
board. Some addition into dts will be needed for the Linux to know
where your sensor is connected at, but then it should work as
plug-and-play.

I hope I did not miss too many steps in between :)

Crt



On Wed, 25 Sep 2019 at 10:18, Rohit Sarkar <rohitsarkar5398@gmail.com> wrote:
>
> Hi,
> This is probably a real rookie question.
> I have been interested in contributing to the driver subsystems such as
> iio. I have submitted some minor patches but nothing substantial.
> I feel that I need some hardware to be able to contribute more.
> What hardware would I need to get started?
> Where would I get this from?
>
> Thanks,
> Rohit
