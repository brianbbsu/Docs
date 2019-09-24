---
description: RISC-V Assembler & Runtime Simulator
---

# Jupiter

![](.gitbook/assets/jupiter%20%281%29.png)

[![License: GPL v3](https://camo.githubusercontent.com/bf135a9cea09d0ea4bba410582c0e70ec8222736/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4c6963656e73652d47504c25323076332d626c75652e737667) ](https://github.com/andrescv/Jupiter/blob/master/LICENSE)[![Azure Pipelines](https://camo.githubusercontent.com/3e6ec74735310767b8769af8dc70eec9c77ec490/68747470733a2f2f6465762e617a7572652e636f6d2f616e6472657363762f4a7570697465722f5f617069732f6275696c642f7374617475732f616e6472657363762e4a7570697465723f6272616e63684e616d653d6d6173746572) ](https://dev.azure.com/andrescv/Jupiter)[![Coverage](https://camo.githubusercontent.com/a4889f93e68e2b252bd1a4b3b9f3fb6a8b9ebd82/68747470733a2f2f696d672e736869656c64732e696f2f617a7572652d6465766f70732f636f7665726167652f616e6472657363762f4a7570697465722f342e737667) ](https://dev.azure.com/andrescv/Jupiter)[![Version](https://camo.githubusercontent.com/e38fdfa13696c595483430a8a5d4b63148289d46/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f72656c656173652f616e6472657363762f4a7570697465722f616c6c2e737667) ](https://github.com/andrescv/Jupiter/releases)[![](https://camo.githubusercontent.com/2e4cc3f0f602a96b633e8b168b8655a9780333f9/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f646f776e6c6f6164732f616e6472657363762f4a7570697465722f746f74616c2e737667)](https://github.com/andrescv/Jupiter/releases)[![issues](https://camo.githubusercontent.com/157860606cb742f60d6ceb0cabd043d03fe0d230/68747470733a2f2f696d672e736869656c64732e696f2f6769746875622f6973737565732f616e6472657363762f4a7570697465722e737667)](https://github.com/andrescv/Jupiter/issues)

**Jupiter** is an open source and education-oriented RISC-V assembler and runtime simulator. It is written in Java and capable of simulate all the instructions of the base integer ISA \(`I` extension\) plus the `M` and `F` extensions \(**RV32IMF**\), including all the pseudo-instructions described in the user-level instruction set manual. It was developed taking into account that it could be used in various courses such as: _Computer Architecture, Compilers and Assembly Programming_.

### Main Features

* **User Friendly**: Jupiter was designed focused on education and for all the people that are getting to know the RISC-V architecture. It places for priority the user experience. Jupiter has two modes of operation \(_Command Line Interface_ and _Graphical User Interface_\) and both of these were developed to be intuitive and easy to use.
* **Modularity**: Jupiter can assemble and simulate several files at once, not everything has to be one file of 1,000 lines of code. Simply indicate by a global label what is the main starting point of the program. This permits modularity and enables the creation of projects and laboratories more easily.
* **Feedback**: People using Jupiter gets feedback on what they are doing wrong. The simulator shows errors of: syntax, when trying to access reserved memory or when trying to write to a read-only memory.
* **Cross-platform**: Jupiter is available for **Linux** \(_Ubuntu_\), **macOS** and **Windows**.

### Screenshots

![GUI Mode](.gitbook/assets/gui.png)

![CLI Mode](.gitbook/assets/cli.png)

### Why this name, Jupiter ?

Traditionally other simulators of this type have used planet names, for example the famous educational simulator for the _MIPS_ architecture **MARS** or the Berkeley's web-based simulator **Venus**. The name **Jupiter** was chosen because of this traditional reasons and also because this planet represents in some sort the number **5** \(_is the fifth planet from the Sun and the largest in the Solar System\)_, in contrast with RISC-V that is the 5th generation of the ISA originally designed in the 90's.

