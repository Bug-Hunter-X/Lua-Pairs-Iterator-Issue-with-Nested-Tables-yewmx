# Lua Pairs Iterator and Nested Tables

This repository demonstrates a potential issue when using Lua's `pairs` iterator with deeply nested tables.  The `pairs` iterator might not behave as expected in all cases, especially with complex table structures.

The `bug.lua` file contains code that illustrates this problem. The `bugSolution.lua` file offers a possible solution or alternative approach.

## Problem Description

The `pairs` iterator iterates over the keys of a Lua table.  However, if a table contains other tables, and these nested tables also contain tables, the iteration may not correctly traverse all nested structures.  This could lead to missing data or unexpected results.

## Solution

Several approaches can address this issue, each with its pros and cons.  One approach is to use a recursive function, as shown in `bugSolution.lua`, to explicitly traverse and handle nested tables.