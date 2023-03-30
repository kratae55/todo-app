# Robot Framework in Docker, with Headless Chrome

## Running the tests

This tests on OS windows can be run using the following command:

    .\docker-run.ps1
    
This tests on mac (intel) can be run using the following command:    
incase tests on mac (m1,m2) google chrome browser is not supported, you can fix BROWSER=headless from chrome to firefox

    docker run -v ${PWD}/reports:/opt/robotframework/reports:Z -v ${PWD}/test:/opt/robotframework/tests:Z -e BROWSER=headlesschrome ppodgorsek/robot-framework:latest
