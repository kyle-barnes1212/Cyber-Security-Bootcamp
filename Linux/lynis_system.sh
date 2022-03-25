#! /bin/bash

# runs a full system audit and saves it to a lynis system scan log
lynis audit system >> /tmp/lynis.system_scan.log
