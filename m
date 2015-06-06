From: alex <afrat001@mail.de>
Subject: No probing in module while using devicetree
Date: Sun, 07 Jun 2015 00:24:47 +0200
Message-ID: <5573732F.9060106@mail.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.de;
	s=mail201212; t=1433629489;
	bh=Zjnujf1YGEp7bSoQAviVB3Fdw/sg/N7stwMqUS5E7EE=;
	h=Date:From:To:Subject:From;
	b=evAyg4mBLiRFTtEoYGrYabtVnsjYGkipvngWEzEJNP1593JPKEpIQVfBm+fUt+X0v
	 V+JKYBZatiMk0urwdpfH9/21iN8pRXA24ZAgUAA7ZoOxSf6NcuxszLw05n/2i+BfBr
	 khn+uGUh3o25/4Lghob+G67U1sD6E3kfNcGZeX6E=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi,
I want to write my first driver. The target is the beaglebone black. For 
my platform_driver need access to one simple gpio pin and one pwm pin so 
i used the device tree model to access the drivers for pwm and gpio 
chip. Now i have the issue that my probe function will never get called 
and i cant identify the problem. I tried the driver as built-in and as 
module, but in both cases i didn't find the probe-string in dmesg. The 
entry in the dts looks like:

/ {
     model = "TI AM335x BegleBone Black";
     compatible = "ti,am335x-boneblack","ti,am335x-bone","ti,am33xx";

                 motor_left:motor@1 {
                     compatible ="alex,motor";
                     gpio=&gpio0;
                     pincrtl-names="default";
                     pincrtl-0=<&pwm_pins>;
                     gpio_out_pins=<&gpio0 1>;
                     pwms = <&ehrpwm0 0 500000>;
                     status = "okay";
                 };
};

  and the module code:
...

static int motor_probe(struct platform_device *pdev)
{
     pr_alert("motor_probe called!\n");
     return 0;
}

static int motor_remove(struct platform_device *pdev)
{
       pr_alert("motor_remove called!\n");
       return 0;
}

...

static struct of_device_id motor_of_match[] =
{
     {.compatible = "alex,motor"},
     {}
};

MODULE_DEVICE_TABLE(of, motor_of_match);

static struct platform_driver motor_pdriver =
{
   .probe = motor_probe,
   .remove = motor_remove,
   .driver = {
         .name = "motor",
         .of_match_table = of_match_ptr(motor_of_match),
         .owner = THIS_MODULE,
       },
};

static int __init motor_driver_init(void)
{
   int ret;

   pr_info("motor_dirver_init\n");
   ret = platform_driver_register(&motor_pdriver);
   if(ret < 0)
       goto motor_driver_init_error;

   return 0;

motor_driver_init_error:
   return ret;
}

thx for your help.
static void __exit motor_driver_exit(void)
{
   pr_alert("motor_dirver_exit\n");
   platform_driver_unregister(&motor_pdriver);
}

module_init(motor_driver_init);
module_exit(motor_driver_exit);



--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
