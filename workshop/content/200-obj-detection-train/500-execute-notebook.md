+++
title = "5. Execute the Notebook"
chapter = false
weight = 500
+++

1. Scroll down to the first code cell and click on it.
1. If `aws_region` and `s3_bucket` are not set, set them to the values used in the CloudFormation script or console. If you don't know the bucket name:
	- Go back to the CloudFormation tab
	- Click on the stack name to check its details
	- Look into the "Parameters" tab to see the bucket name.
2. Skip the cells to stage COCO 2017 dataset in Amazon S3 and to copy COCO 2017 dataset from S3 to Amazon EFS. They have been pre-loaded for you. If you want to see what they do, you can double-click on the shell scripts in the File Browser.
3. From the next cell, keep executing all cells until you get to one containing the following command:
	```
	%%time
	
	! ./container/build_tools/build_and_push.sh {aws_region}
	```
4. Execute the command, wait for it to finish (it will take some time to download the base docker image), scroll to the end of the cell output and copy the Amazon ECR URI. It should look like this:
	`dkr.ecr.us-east-1.amazonaws.com/mask-rcnn-tensorpack-sagemaker:tf1.13-xxxxxxxxx`
5. On the next cell, replace `#<amazon-ecr-uri\>` with the URI you just copied, between quotes.
6. Skip the cells under "AWS Samples Mask R-CNN" and go directly to the first cell under "SageMaker Initialization".
7. Execute that cell. On the next one, replace `# set to tensorpack_image or aws_samples_image` with `tensorpack_image`. Execute the cell after the edit.
8. Under "Define SageMaker Data Channels":
	- The first cell will retrieve the id of the EFS attached to the instance. That will be needed in the second cell.
	- In the second cell, replace `# 'fs-xxxxxxxx'` with the value displayed in the first cell output, in quotations. Then run the cell.
	- Run the rest of the cells in the section.
1. Run all cells in the "Configure Hyper-parameters" and "Define Training Metrics" sections.
2. On the "Define SageMaker Training Job" Section:
	- Go back to the CloudFormation tab, open the details of the stack created earlier and select the "Outputs" tab;
	- Copy the "SecurityGroup" value and, in the first cell of the notebook, replace `# ['sg-xxxxxxxx']` with it (including square brackets and quotes).
	- Back in the CloudFormation tab, copy the "SubNets" value and replace `# ['subnet-xxxxxxx']` with it (again including square brackets and quotes).
	- Execute the two cells.
	- Monitor the output of the `mask_rcnn_estimator.fit(inputs=data_channels, logs=True)` cell for about 10 minutes. There should be a long output in different colors – each color represents a different host. There will be some warnings and information messages (repeated in each color), but at some point there should be an output like this:
		```
		--------Begin MPI Run Command----------

		HOROVOD_CYCLE_TIME=0.5 \

		HOROVOD_FUSION_THRESHOLD=67108864 \

		mpirun -np 32 \

		.

		.

		.

		--------End MPI Run Comamnd------------

		Data for JOB [63755,1] offset 0 Total slots allocated 32

		========================   JOB MAP   ========================

		Data for node: ip-172-30-0-88#011Num slots: 8#011Max slots: 0#011Num procs: 8

		Process OMPI jobid: [63755,1] App: 0 Process rank: 0 Bound: N/A

		.

		.

		.
		```
	- You can go back to the SageMaker console, (click [here](https://console.aws.amazon.com/sagemaker) if you closed the tab) and monitor the training job from there. On the SageMaker console page, under "Training":
		- Click on "Training Jobs" on the left menu bar, 
		- Locate the running training job (it should have the name of the notebook and a timestamp) and click on it. 
		- Scroll down to the "Monitor" section. You'll see resource graphics of the machines in use (CPU, Memory, GPU, etc.)
		- The "View Algorithm Metrics" link will take you to CloudWatch Metrics, where all algorithm metrics will be displayed. This has been configured to log per epoch, so it is probably empty at this point.

**Congratulations**! You got the Mask-RCNN model training going.