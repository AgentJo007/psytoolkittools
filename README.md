# PSYTOOLKITTOOLS

## Installation

```{r}
library(devtools)
devtools::install_github("AgentJo007/psytoolkittools")
```

## Current Functions

### Load Experiment Data

To load experiment data, use the function `load_experiment_data`. This will return a data frame with your data. This functions requires two arguments: a vector of file names that will be opened and read for experiment parsing, and a vector of labels that represent the structure of the values saved in your experiment files.

*Dummy experiment file*:

    456
    100 1 3

*Sample code for this experiment file:*

```{r}
filenames = c("dummy_ex.txt")
labels = c("RT_instructions", "RT_choice", "status", "key")
d = load_experiment_data(filenames)
```

# License

    MIT License

    Copyright (c) 2023

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
