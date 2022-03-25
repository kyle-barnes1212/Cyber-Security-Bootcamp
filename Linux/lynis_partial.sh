#! /bin/bash

# runs an audit on system that focuses on malware, authentication, networking, storage, and filesystems. After the audit, it saves the results to a lynis scan log
sudo lynis audit --test-from-group malware,authentication,networking,storage,filesystems >> /tmp/lynis.partial_scan.log
