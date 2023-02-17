# PSYTOOLKITTOOLS

## Installation

```{r}
library(devtools)
install_github("AgentJo007/psytoolkittools")
```

## Current Functions

### Load Experiment Data

To load experiment data, use the function `load.experiment.data`. This will return a data frame with your data. This function requires two arguments: a vector of file names that will be opened and read for experiment parsing, and a vector of labels that represent the structure of the values saved in your experiment files.

*Dummy experiment file*:

    456
    100 1 3

*Sample code for this experiment file:*

```{r}
filenames = c("dummy_ex.txt")
labels = c("RT_instructions", "RT_choice", "status", "key")
d = load.experiment.data(filenames, label.structure = labels)
```

### Recode Status

In PsyToolkit experiments, a status of 1 represents a correct and 2 an incorrect answer. 3 represents a time out.\
With `recode.status`, status codes can be recoded to custom values.

*Example:*

```{r}
recode.status(vector, correct = 1, error = 0, timeout = -99)
```

### Recode Keys

With `recode.keys`, PsyToolkit key values can be recoded to the pressed key.

*Example key definition in experiment:*

    1 2 3 space

Those values are represented in the experiment file as the following values:

-   1 -\> 1

-   2 -\> 2

-   3 -\> 3

-   space - \> 4

```{r}
vec = c(1,2,3,4,4, 2)
recode.keys(vec, c("1", "2", "3", "space"))
```

# License

    MIT License

    Copyright (c) Jonas Engicht 2023

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
