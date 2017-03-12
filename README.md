# Example running jenkins and selenium grid in docker

## Images
* https://hub.docker.com/r/selenium/hub/
* https://hub.docker.com/r/selenium/node-chrome/
* https://hub.docker.com/_/jenkins/

## Setup selenium
* pip install selenium

## Setup robot framework (Optional)
* pip install robotframework
* pip install robotframework-selenium2library

For java users use the bundled pom.xml and run profile web-tests

## Chrome driver
* download driver
* then move the file to /usr/bin directory `sudo mv chromedriver /usr/bin`
* then goto /usr/bin directory and execute `chmod a+x chromedriver` to mark it executable.

## Run without compose file
First start the hub `docker run -d -P --name selenium-hub selenium/hub`
Then start a chrome node `docker run -d --link selenium-hub:hub selenium/node-chrome`
Then start Jenkins `docker run -p 8080:8080 -p 50000:50000 jenkins`

Check hub is running http://localhost:4444 and jenkins http://localhost:8080

## Run with compose file
 First create a volume for jenkins docker volume create jenkins_data