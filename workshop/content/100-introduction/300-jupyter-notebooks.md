+++
title = "Introduction to Jupyter notebooks"
chapter = false
weight = 300
+++

If you are new to using Jupyter notebooks, please read this section, otherwise you may now **skip** ahead.

Jupyter is an open-source web application that allows you to create and share documents that contain live code, equations, visualizations and narrative text. Uses include: data cleaning and transformation, numerical simulation, statistical modeling, data visualization, machine learning, and much more. With respect to code, it can be thought of as a web-based IDE that executes code on the server it is running on instead of locally.

There are two main types of "cells" in a notebook:  code cells, and "markdown" cells with explanatory text. You will be running the code cells.  These are distinguished by having "In" next to them in the left margin next to the cell, and a greyish background.  Markdown cells lack "In" and have a white background. In the screenshot below, the upper cell is a markdown cell, while the lower cell is a code cell:

![Cells](images/cells.png)

To run a code cell, simply click in it, then either click the **Run Cell** button in the notebook's toolbar, or use Control+Enter from your computer's keyboard. It may take a few seconds to a few minutes for a code cell to run. You can determine whether a cell is running by examining the `In[]:` indicator in the left margin next to each cell:  a cell will show `In [*]:` when running, and `In [a number]:` when complete.

Please run each code cell in order, and **only once**, to avoid repeated operations.  For example, running the same training job cell twice might create two training jobs, possibly exceeding your service limits.

## Keyboard shortcuts

So far we have seen how to run a cell with Ctrl + Enter, but there are plenty more. Keyboard shortcuts are a very popular aspect of the Jupyter environment because they facilitate a speedy cell-based workflow. Many of these are actions you can carry out on the active cell when it’s in command mode.

Below, you’ll find a list of some of Jupyter’s keyboard shortcuts. You’re not expected to pick them up immediately, but the list should give you a good idea of what’s possible.

- Toggle between edit and command mode with Esc and Enter, respectively.
- Once in command mode:
  - Scroll up and down your cells with your Up and Down keys.
  - Press A or B to insert a new cell above or below the active cell.
  - M will transform the active cell to a Markdown cell.
  - Y will set the active cell to a code cell.
  - D + D (D twice) will delete the active cell.
  - Z will undo cell deletion.
  - Hold Shift and press Up or Down to select multiple cells at once.
  - With multiple cells selected, Shift + M will merge your selection.
- Ctrl + Shift + -, in edit mode, will split the active cell at the cursor.
- You can also click and Shift + Click in the margin to the left of your cells to select them.

Go ahead and try these out in your own notebook.

## Additional resources

- JupyterLab <a target="_blank" rel="noopener noreferrer" href="images/jupyterlab-shortcuts.png">Keyboard Shortcut Cheat Sheet</a>
- <a target="_blank" rel="noopener noreferrer" href="https://dzone.com/articles/getting-started-with-jupyterlab">Getting Started with JupyterLab (online)</a>
- Official <a target="_blank" rel="noopener noreferrer" href="https://jupyterlab.readthedocs.io/en/stable/">JupyterLab documentation (online)</a>

