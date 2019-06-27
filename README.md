# docker-python-chromedriver (with friends)
Python with Chromedriver, for running automated tests (and other things)

## Includes:

 - Python
 - Google Chrome
 - Chromedriver
 - Selenium (in some versions)
 - Xvfb (in some versions)
 - Pandas
 - Civis
 - Pillow

## How to Start:

Run the following in your terminal:

```
$ cd [your working directory]
$ docker run -it -w /usr/workspace -v $(pwd):/usr/workspace mcoirad/selenium-pandas sh
```

This will create a container from the image. Then you could starting running the commands in the container as in your working directory. The followings are some examples to run a selenium test.

## Examples to run selenium test in the container:

You can download a selenium test example from [here](https://github.com/joyzoursky/docker-python-chromedriver/blob/master/test_script.py) to quick start.


You may run:

```
# python test_script.py
```

Then you should see the test result like this:

```
test_case_1 (__main__.TestTemplate)
Find and click top-right button ... ok
test_case_2 (__main__.TestTemplate)
Find and click Learn more button ... ok

----------------------------------------------------------------------
Ran 2 tests in 8.684s

OK
```
