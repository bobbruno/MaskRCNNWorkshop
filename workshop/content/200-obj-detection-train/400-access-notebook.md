+++
title = "4. Access the Notebook"
chapter = false
weight = 400
+++

1. On the console, navigate to the SageMaker Service
2. Click on Notebook Instances
3. Locate the Notebook Instance you have created. It should be the only one In Service.
![Notebook Instances](resources/notebook-instances.png?width=800px)
4. Click on Open JupyterLab.
1. On the left sidebar, click on the Folder icon (File Browser).
1. If you don't see a folder called `mask_rcnn_lab`:
	1. Open a terminal window in JupyterLab
	1. Navigate to the `SageMaker` folder (`cd SageMaker`).
	2. Clone the sagemaker examples repo from git:
		`git clone https://github.com/bobbruno/mask_rcnn_lab.git`
5. On the left side, click on the folder icon.
6. Navigate to `mask_rcnn_lab/mask_rcnn`
7. Open `mask-rcnn-efs.ipynb`
