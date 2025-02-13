echo "Enter from 1-4 for options"
echo "1:to start docker"
echo "2:to stop docker"
echo "3:to start jenkins"
echo "4:to stop jenkins"

read service
echo "entered service: $service"

if [ $service -eq 1 ]; then
        sudo apt-get update
        sudo apt-get install docker.io
elif [ $service -eq 2 ]; then
        sudo systemctl stop docker
elif [ $service -eq 3 ]; then
        sudo apt update
        sudo apt install fontconfig openjdk-17-jre
        sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
        sudo apt-get update
        sudo apt-get install jenkins
elif [ $service -eq 4 ]; then
        sudo systemctl stop jenkins
else
        echo "Enter number between 1-4"
fi
   
