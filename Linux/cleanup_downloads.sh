#! /bin/bash

# this script moves the downloads from the different downloads pertaining to hospital records that have to do with doctors, patients and treatments, and moves them to the permanite directory
mv ~/Downloads/doctors*.docx /usr/share/doctors
mv ~/Downloads/patients*.txt /usr/share/patients
mv ~/Downloads/treatments*.pdf /usr/share/treatments
