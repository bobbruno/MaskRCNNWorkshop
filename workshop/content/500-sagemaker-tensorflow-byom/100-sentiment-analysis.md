+++
title = "Object Detection - Serving Inference "
weight = 100
+++

In this module, we'll test the object detection model we've been training since the beginning of the day. We'll create a custom serving container with the model generated from the training job. All of this is simplied using the conveniences provided by the [SageMaker Python SDK](https://github.com/aws/sagemaker-python-sdk), which abstracts away many of the low level details of setting up training jobs and endpoints.

Follow these steps:

1. Go to your Jupyter notebooks homepage

2. Click into the folder called `mask_rcnn_lab`

3. Click into the folder called `mask_rcnn`

4. Click on the notebook called `mask_rcnn_inference.ipynb`, then follow the directions in the notebook.

**NOTE: deploying the model for this example typically takes about 10 minutes. Building the container usually takes another 5 minutes.**
