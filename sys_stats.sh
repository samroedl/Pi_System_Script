#!/bin/bash
#Editor: Sam Roedl
#************************************#
#******* OUTPUT SYSTEM STATS ********#
#************************************#

# Make a directory called System_Stats and change directories to that directory
# Try to make the output for each file look as neat and organized as y
mkdir System_Stats
chmod o+rwx System_Stats
cd System_Stats

# Output the following information to a file called kernel
     uname -s > Kernel
  uname -r >> Kernel
   uname -v >> Kernel
   uname -o >> Kernel


# Output the following information to a file called network

    lshw -short -sanitize > network


# Output the following information to a file called disk.html

   lshw -html > disk.html


# Output the following information to a file called cpu

   lscpu | head -n5 > cpu
   lscpu | tail -n16 >> cpu


# Output the following information to a file called block_dev

  lsblk -i -o NAME,SIZE,TYPE > block_dev
