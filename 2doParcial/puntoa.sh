     lsblk
     sudo fdisk /dev/sdc
     echo n
     echo p
     echo 1
     echo 
     echo +1G
     echo n
     echo p
     echo 2
     echo
     echo +1G
     echo n
     echo p
     echo 3
     echo
     echo +1G
     echo n
     echo e
     echo 4
     echo
     echo +3G
     echo n
     echo
     echo +1.5g
     echo n 
     echo
     echo
     echo t
     echo 1
     echo 82
     echo t
     echo 2 
     echo 8e
     echo t
     echo 3 
     echo 8e
     echo t
     echo 5
     echo 8e
     echo t
     echo 6 
     echo 8e
     sudo lsblk
     sudo fdisk /dev/sdc
     sudo mkswap /dev/sdc1
     sudo swapon /dev/sdc1
     lsblk
     sudo pvcreate /dev/sdc2 /dev/sdc3 /dev/sdc5 /dev/sdc6
     sudo pvs
     sudo vgcreate vgAdmin /dev/sdc2 /dev/sdc3
     sudo vgcreate vgDevelopers /dev/sdc5 /dev/sdc6
     sudo pvs
     sudo lvcreate -L 2G vgAdmin -n lvAdmin
     sudo lvcreate -L 1.9G vgAdmin -n lvAdmin
     sudo lvs
     sudo lvcreate -L 1G vgDevelpers -n lvDevelopers
     sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
     sudo lvcreate -L 1G vgDevelopers -n lvDevops
     sudo lvcreate -L .9G vgDevelopers -n lvTesters
     sudo lvs
     sudo pvs
     sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin 
     sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers 
     sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops 
     sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters 
     sudo mkdir -p /mnt/{lvDevelopers,lvDevops,lvTesters,lvAdmin}
     sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/developers
     sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers/
     sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops/
     sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters/
     sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin/
     sudo lsblk -l
   
