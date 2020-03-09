+++
title = "Kick-off Object Detection training"
chapter = true
weight = 101
+++

Before going into the labs, let's start the training of the object detection model. It's a large model ([Mask-RCNN](https://arxiv.org/abs/1703.06870)), that takes several hours to train adequately, so we need to get it running early to be able to use the trained model later:

***Step-by-step instructions***

These are detailed step-by-step instructions - **don't bother understanding what you're doing at this point**. WE will explain what is happening at each step later today, after covering the basics. Just follow each step and ask for help if you need it.

## 1. Set up the environment

1. Open a terminal window in your machine and navigate to a folder where you can clone a repository.
2. Clone the sagemaker examples repo from git:
	`git clone https://github.com/bobbruno/mask_rcnn_lab.git`
3. Go into the cloned repo:
	`cd mask_rcnn_lab`
5. Pick one of [2a. Via Command Line]({{< relref "100-via-command-line" >}}) or [2b. Via Amazon Console]({{< relref "200-via-console" >}}) setup instructions below, depending on your preference.
	- Command line is adequate for those familiar working with the bash shell and who already have the aws CLI installed and set up.
	- Amazon Console is a web site with a point-and-click interface, for those who prefer working this way.
6. After finishing step 2 (via 2a or 2b), continue from step 3 until the end of the remaining steps.

{{% children showhidden="false" %}}
