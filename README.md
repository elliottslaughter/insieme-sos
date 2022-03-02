# Examples from the INSIEME SoS Workshop

This repository contains example codes from the INSIEME SoS Workshop
on March 4, 2022. Each example should be a complete, self-contained
code that you can run independently from any other.

Assuming you have installed Regent at `path/to/regent.py`, you can run
most examples with:

```
path/to/regent.py example.rg
```

The only exception is the separate compilation example, which you'll
need to build with Make:

```
cd compile_times/1_separate_compilation
REGENT_PY=path/to/regent.py make -j4
LD_LIBRARY_PATH=path/to/../bindings/regent ./main
```
