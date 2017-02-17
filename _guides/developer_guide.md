# Developer Guide

##Environments

Typically three Environments are present **Development**,**Staging**

###Development Environment

For developers you need to do following changes
```bash
- switch to .env.development
```
###Staging Environment
For staging you need to do following changes
```bash
- switch to .env.staging
```

#Continuous Integration
We are using Jenkins as CI tool.Two main files associated with it are build.sh, build.xml.
In Build.sh we provided the procedure of deployment.we can also mention teh key steps for our 
jenkins server initialization.It runs teh build.xml via **apache ant**. 
In build.xml we make the file for different tasks. Build.xml covers many aspects some of them are as follows:
```bash
1. Static Analysis
2. Running of tests whether by codeception or phpunit
3. CodeCoverage
4. Project Documentation
```

In build.xml we define default build which includes several properties 
which runs during this build for example **phpcs**, **phpmd**, **phpunit**,**gulp** etc
