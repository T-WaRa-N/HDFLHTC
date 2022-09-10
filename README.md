# SECTION C

> ## say_the_number  uses Ruby programming language to convert digits into words e.g. 11 -> Eleven 

### __Ruby__ is the programming language used to achieve this task.

[Click here to go to my "Github Repo"](https://github.com/T-WaRa-N/HDFLHTC "say_the_number source code")

* git clone in to your local machine
* I suggest you run it on replit or VS Code locally

The programme says the number, a user types any number between 0 and 999999999999999 and the program will say the number in words showing on the screen. The image below displays an example, the actual function on the left side and output on the right side. 

> ## Runnin example in the image below
![snippet](./images/say_the_number.PNG)

The following snippet is the test suit and my code has passed most of the input but it is not punctuated nicely. The code can be improved and factorized significantly. 

```Text File
One thousand and one.
Test Passed: Value == "Zero."
Test Passed: Value == "Eleven."
Test Passed: Value == "Fourteen."
Test Passed: Value == "Fifteen."
Test Passed: Value == "Forty-three."
Test Passed: Value == "Fifty."
Test Passed: Value == "One thousand and one."
FAILED: Expected: "Twenty thousand.", instead got: "Twenty thousand ."
ERROR:  `expect': Expected: "Twenty thousand.", instead got: "Twenty thousand ." (Test::Error)
 from `assert_equals'
 from `<main>'
```
> ## Running the code in your machine

1. Git clone  the repo into your machine
1. Open the say_the_number function in to your Ruby intepreter
1. Alternatively run the code on Repelit online
1. The file has no dependencies it is straight forward.
