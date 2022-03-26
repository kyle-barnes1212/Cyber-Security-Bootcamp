## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![image](https://github.com/kyle-barnes1212/Cyber-Security-Bootcamp/blob/df016dd1b82cd196daeeb43ffd81feddf67f176a/Diagrams/ELK_Stack_P1.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - Elk_Install
  - Pentest.yml
  - FileBeat
  - MetricBeat

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
- A loadbalance is meant to serve as a point of access for a service that is used served by multiple machines. That proviceds high availabiltiy models to function properly
- A jumpbox serves as a gateway to gain entry into a remote network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the log files and system resources.
- Filebeat will watch the system logs, and forward any changes to Elasticsearch
- Metricbeat is used for gathering metrics and system resource usage for display in Elasticsearch. 

The configuration details of each machine may be found below.

| Name       | Function   | IP Address | Operating System |
|------------|------------|------------|------------------|
| Jump Box   | Gateway    | 10.0.0.4   | Ubuntu           |
| Web-1      | Webserver  | 10.0.0.5   | Ubuntu           |
| Web-2      | Webserver  | 10.0.0.6   | Ubuntu           |
| Web-3      | Webserver  | 10.0.0.7   | Ubuntu           |
| ELK-Server | ELK server | 10.1.0.4   | Ubuntu           |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
- 24.2.66.216

Machines within the network can only be accessed by jumpbox.
- Jump Box
   Public IP: 104.40.88.69
   Private IP: 10.0.0.4	      

A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible | Allowed IP Addresses |
|------------|---------------------|----------------------|
| Jump Box   | Yes                 | Personal IP Address  |
| Web-1      | No                  | 104.40.88.69         |
| Web-2      | No                  | 104.40.88.69         |
| Web-3      | No                  | 104.40.88.69         |
| ELK-Server | Yes                 | 104.40.88.69         |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- Allows for for full automation of a specified serveras well as lowers the risk of configuration errors..

The playbook implements the following tasks:
- Install docker.io, which is the core docker code to the remote server.
- Install python3-pip, which is an installation module that allows for additional docker modules to be intalled easier.
- Install Docker module, which tells the perevious PIP module to intstall the necessary docker component modules.
- Increase and use more memory, which takes care of a common issue with the ELK Docker image that has to little memory. This step helps the server to launch.
- Download and launch a docker elk container

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![image](https://github.com/kyle-barnes1212/Cyber-Security-Bootcamp/blob/557320224d19fa8feacbb51abb54daa11c4cc907/Ansible/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1: 10.0.0.5
- Web-2: 10.0.0.6
- Web-3: 10.0.0.7

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat collects system type events to see who is actively logging into the system
- Metricbeat collects system information such as cpu usage and memory, which helps to see what any rouge programs or behaviors taking system resources. 

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the elk_install.yml to /etc/ansible/elk_install.yml
- Update the hosts file to include the role [elk], then includ the destination IP of the ELK server.
- Run the playbook, and navigate to http://[your_elk_server_ip]:5601/app/kibana to check that the installation worked as expected.

