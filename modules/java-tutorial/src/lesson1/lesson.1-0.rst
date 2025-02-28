====================================
Lesson 1: Setting Up and First Steps
====================================

.. contents:: Table of Contents
   :depth: 2
   :local:

Learning Objectives
===================
By the end of this lesson, you will:
- Set up a Java development environment on Linux.
- Compile and run your first Java program.
- Understand how Java code is executed using the Java Virtual Machine (JVM).
- Gain familiarity with Java syntax and basic program structure.

Background
==========
Java is a high-level, object-oriented programming language designed to be **portable**, meaning that code written on one system can run on another without modification. This is achieved through the **Java Virtual Machine (JVM)**, which interprets compiled Java bytecode.

Unlike Python, which is dynamically typed and interpreted, Java is **statically typed and compiled**, making it more performance-oriented. It enforces type safety and structured programming patterns, which helps in building large, maintainable software systems.

In this lesson, you will:
1. **Install OpenJDK (if not installed)**
2. **Write a simple Java program**
3. **Compile and run the program**
4. **Explore the Java compilation process**

Setting Up Java
===============
Since you are using a Linux OS (Solus2, Fedora, and Debian), you will install **OpenJDK**, the open-source implementation of Java.

To check if Java is installed, run:
.. code-block:: sh

   java -version

If Java is not installed, install it using:

- **Fedora:**
  .. code-block:: sh

     sudo dnf install java-17-openjdk-devel

- **Debian/Ubuntu:**
  .. code-block:: sh

     sudo apt install openjdk-17-jdk

- **Solus:**
  .. code-block:: sh

     sudo eopkg install openjdk-17

Once installed, verify with:

.. code-block:: sh

   java -version
   javac -version

Next Steps
==========
After setting up Java, you will write and compile your first Java program.
Proceed to **Lesson 1: Writing and Running Your First Java Program** to begin coding.
