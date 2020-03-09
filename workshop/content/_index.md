---
title: "AWS AI/ML workshop"
chapter: true
weight: 1
---

# AWS AI/ML workshop

This workshop is intended to provide practical, hands-on experience implementing deep learning use cases on AWS. The workshop covers the following topics:
- Introduction to SageMaker
- Introduction to Jupyter Notebooks
- Basic training of Tensorflow models using python script files
- Bringing your own algorithm and/or specialized container into SageMaker
- Training a 3rd party container in SageMaker leveraging multiprocessing tools.

You will use key features of Amazon SageMaker, e.g. notebook instances, local/hosted training, hyper parameter optimization through  script mode, hosted endpoints and custom images. Finally you will learn how to train and deploy your own object detection TensorFlow model!

This workshop isn’t about data science itself, although there are explanations accompanying every step that is taken, rather it is about how to solve real machine learning problems on the Amazon SageMaker platform.

## Available Labs

Labs can be run independently from each other!

### Amazon SageMaker

[**Lab 1 - Training and Serving Tensorflow Models**]({{< relref "300-sagemaker-basics" >}}).

[**Lab 2 - Image classification with Amazon SageMaker and Tensorflow**]({{< relref "400-sagemaker-image-classification" >}}).

[**Lab 3 - Distributed Tensorflow for Object Detection**]({{< relref "500-sagemaker-tensorflow-byom" >}}).
