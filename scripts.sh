#bin/bash
for I in {1..10}
do
echo $I
sleep 1
done
chmod 777 /myscripts/Terraform
./myscripts/Terraform version