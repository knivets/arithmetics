# arithmetics
A recursive descent parser for integer arithmetic written in C.

To compile the parser, run `make` inside the project's folder.

To invoke the parser run the program passing a path to a file containing arithmetic expressions as an argument:

` ./main file-with-code`

The syntax of the language recognized by this parser is C-like:

```
 1+2 => 3
 
 (1+5)*10+1 => 61
```

#Disclaimer
The project was written for researching purposes and should be used accordingly.
