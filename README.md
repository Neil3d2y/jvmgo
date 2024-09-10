# jvmgo

## ch01

### init and build a module

`go mod init neil3d2y.com/jvmgo/ch01`

Explanation of the Module Path: `neil3d2y.com/jvmgo/ch01`

- neil3d2y.com: The base URL of your repository hosting service (like GitHub, GitLab, Bitbucket, etc.). Replace this with your actual hosting service domain.

- `jvmgo`: The root name of your repository. This part of the path typically matches the repository name on the hosting service.

- `ch01`: The subdirectory under your repository that represents this specific Go module.



### JVM Knowledge Review

1. Java commands

```shell
❯ java -h
Usage: java [options] <mainclass> [args...]
           (to execute a class)
   or  java [options] -jar <jarfile> [args...]
           (to execute a jar file)
   or  java [options] -m <module>[/<mainclass>] [args...]
       java [options] --module <module>[/<mainclass>] [args...]
           (to execute the main class in a module)
   or  java [options] <sourcefile> [args]
           (to execute a single source-file program)
```

There are three categories of inputs:

1. `[options]`

    1. standardized options. i.e. 
    
    | option name | usage     |
    | ----------- | --------- | 
    | `-cp`    | <class search path of directories and zip/jar files> |
    | `-classpath`   | <class search path of directories and zip/jar files> |
    | `--class-path`  | <class search path of directories and zip/jar files> |
    |      `-p`       |   module path  |
    |   `-?` or `--help` |  print this help message to the error stream |
    | `-version` | print product version to the error stream and exit |


    All standardized info can be found by running `java -h`

    2. non-standardized options

    | option name | usage     |
    | ----------- | --------- | 
    | -Dproperty=value  | set java system property |
    | -Xms=2g | set heap initial size |
    | -Xmx=10g | set heap max size |
    | -Xss=2m | set thread stack size |


2. `<mainclass> or <jarfile>`

    <mainclass>: fully qualified class name.
    <jarfile>: location to `jar`

3. `[args...]`
    arguments passed to main class. 
    ```java
    public static void main(String[] args) {}
    ```


```go
type Name struct {
    var1    bool
    var2    string
    var3    []string
}
```