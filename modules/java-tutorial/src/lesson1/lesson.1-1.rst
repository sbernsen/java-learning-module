======================================
Lesson 1.1: Writing and Running Java
======================================

.. contents:: Table of Contents
   :depth: 2
   :local:

Learning Objectives
===================
By the end of this lesson, you will:
- Write your first Java program.
- Compile Java source code into bytecode using `javac`.
- Run the compiled program using the Java Virtual Machine (JVM).
- Understand the structure of a simple Java application.

Writing Your First Java Program
===============================
Create a new directory for your Java projects:
.. code-block:: sh

   mkdir -p ~/java-projects/lesson1
   cd ~/java-projects/lesson1

Then, create a new Java file using a text editor:

.. code-block:: sh

   nano HelloWorld.java

Now, write the following code inside `HelloWorld.java`:

.. code-block:: java

   public class HelloWorld {
       public static void main(String[] args) {
           System.out.println("Hello, World!");
       }
   }

### **Explanation of the Code**
- `public class HelloWorld`: Defines a **class** named `HelloWorld`. In Java, all code must be inside a class.
- `public static void main(String[] args)`: This is the **entry point** of any Java application.
- `System.out.println("Hello, World!");`: Prints text to the console.

Compiling and Running the Program
=================================
Unlike Python, which runs scripts directly, Java requires **compilation** before execution.

1. **Compile the program** using `javac` (Java Compiler):
   .. code-block:: sh

      javac HelloWorld.java

   This creates a file called `HelloWorld.class`, which contains **bytecode**.

2. **Run the compiled Java program**:
   .. code-block:: sh

      java HelloWorld

   Expected output:
   .. code-block:: text

      Hello, World!

Understanding the Compilation Process
=====================================
Java follows a **two-step execution process**:

1. **Compilation (javac)**
   - Converts `.java` files into `.class` bytecode.
   - Bytecode is platform-independent and runs on any JVM.

2. **Execution (java)**
   - The JVM interprets and runs the bytecode.

Debugging Common Issues
========================
- **Error: `javac: command not found`**  
  - Ensure Java is installed and `javac` is available in your system’s PATH:
    .. code-block:: sh

       echo $JAVA_HOME
       which javac

- **Error: `HelloWorld.java:1: error: class HelloWorld is public, should be declared in a file named HelloWorld.java`**  
  - Ensure the filename matches the class name exactly.

Next Steps
==========
Now that you’ve written and executed your first Java program, proceed to **Lesson 1.2: Variables and Data Types** to explore Java’s type system.
