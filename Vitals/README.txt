Vitals is a small shell script which gets that gets some basic stats of your Raspberry Pi running the Rasbian distribution. 

The majority of the command runs using the vcgencmd command. This will recieve some system stats when ran. Here are a list of the commands;
$ vcgencmd commands
commands="vcos, ap_output_control, ap_output_post_processing, vchi_test_init, vchi_test_exit, pm_set_policy, pm_get_status, pm_show_stats, pm_start_logging, pm_stop_logging, version, commands, set_vll_dir, led_control, set_backlight, set_logging, get_lcd_info, set_bus_arbiter_mode, cache_flush, otp_dump, codec_enabled, get_camera, get_mem, measure_clock, measure_volts, measure_temp, get_config, hdmi_ntsc_freqs, hdmi_status_show, render_bar, disk_notify, inuse_notify, sus_suspend, sus_status, sus_is_enabled, sus_stop_test_thread, egl_platform_switch, mem_validate, mem_oom, mem_reloc_stats, file, vctest_memmap, vctest_start, vctest_stop, vctest_set, vctest_get"

This is a cool little shell script that i wrote to keep an eye on system stats at any time. I plan on eventually adding some more, and cleaning it up a bit. 

Check back for more updates and other things.

Thanks for checking it out! 

