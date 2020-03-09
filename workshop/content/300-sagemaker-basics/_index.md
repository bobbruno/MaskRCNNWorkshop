+++
title = "Lab 1 - Training and Serving Tensorflow Models"
chapter = true
weight = 300
+++

# Training and Serving Tensorflow Models

This lab goes through the simplest (yet powerful) method of training and serving a deep learning model (in this example, with Tensorflow). You will learn how to use some of the key features of Amazon SageMaker:

- Training a model using a a Tensorflow python script
- Creating training jobs
- Deploying an Amazon SageMaker endpoint to serve predictions
- How to call an endpoint
- Model Hyperparameter Tuning

## Instructions

1. On JupyterLab, click on the File Browser icon
2. Navigate to the `mask_rcnn_lab/tensorflow_script_mode_training_and_serving` folder.
2. Double-click on the `tensorflow_script_mode_training_and_serving.ipynb` notebook to open it.
3. Check that the `tensorflow_p36` kernel is being used in the background.
	- On the top right of the notebook tab, the kernel in use is displayed.
	- If `no running kernel` is displayed, wait for about 30 seconds to allow the kernel to start
	- You can click on it to change the current running kernel.
	- If needed, click on it and select the `conda_tensorflow_p36` kernel from the dropdown box, and click `Select`.
4. Follow the instructions on the notebook, executing the code cells in sequence
	- tip: you can use shift-enter on any cell to execute it and move to the next one (even text cells).
	- Remember: while a cell is executing, a `[*]` is displayed on its left.

## Cleanup

To avoid charges for endpoints and other resources you might not need after the workshop, please refer to the [**Cleanup Guide**]({{< relref "800-cleanups" >}} ).
