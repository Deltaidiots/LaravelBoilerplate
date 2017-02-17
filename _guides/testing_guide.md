#Testing

In order to do testing we have **Codeception** installed. 
Codeception offers us variety of tests **Functional**,**Unit**,**acceptance**.
Main Documentation link for Codeception is [http://codeception.com/for/laravel]

##Functional Tests
Functional tests allow test application by simulating user actions.
This is done by sending requests to framework kernel and checking HTML as a result
To start you need to configure **tests/functional.suite.yml** to use Laravel5 module
```bash
class_name: FunctionalTester
modules:
    enabled:
        - Laravel5:
            environment_file: .env.testing
        - \AppBundle\Helper\Functional
```
we can run the test by this command **call ./vendor/bin/codecept run tests/functional/TestName**
##Unit Tests
Codeception is powered by PHPUnit so unit and integration test work in a similar manner.
Test created are actually inherited from PHPUnit_Framework_TestCase.
You will need to enable Laravel5 module in unit.suite.yml to have its methods inside **$this->tester** object.
we can run the test by this command **call ./vendor/bin/codecept run tests/unit/TestName**
##API Tests
API Tests are done at functional testing level but instead of testing HTML responses on user actions, they test requests and responses via protocols like REST or SOAP. To create api tests you should create a suite for them.
You will need to enable REST, Laravel5 module in tests/api.suite.yml.
```bash
class_name: ApiTester
modules:
    enabled:
        - REST:
            url: /api/v1
            depends: Laravel5
        - \Helper\Api
    config:
        - Laravel5:
            environment_file: .env.testing
```
Create the suite by following command
```bash
 $ php codecept generate:suite api
```
we can run the test by this command **call ./vendor/bin/codecept run tests/api/TestName**