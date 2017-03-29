# Firmware Modularization using a Property/Event based Approach

## Overview

This source code demonstrates a flexible approach in firmware modularization 
with an emphasis on data-oriented programming.
Data which modules depend on are encapulated into a lightweight wrapper,
which implement a clear interface for read and write access.
These can further be extended by defining events (such as a write access, i.e change in value)
for which handlers can be defined. Using this approach, a module can notify a change in value
without the need that both objects are dependent on each other.

(documentation to be continued…)

## Building

Just type "make debug" for a debug build, "make release" obviously for a release build.
A symlink is automatically generated pointing to the lastest build at the project root for ease of execution.

## Running the example

The example code defined in main.cpp applies a stim to relevant signals taken from the file "round7.csv".