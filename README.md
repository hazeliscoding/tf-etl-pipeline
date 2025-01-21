# tf-etl-pipeline

TODO: 

1) **Documents**: These raw files serve as the initial data source.  
2) **Amazon S3 (Raw Zone)**: The unprocessed documents are placed in an S3 bucket designated as the "Raw Zone" for initial storage and later handling.  
3) **AWS Lambda**: This function is automatically invoked to transform or process the data as necessary before passing it along to the subsequent step.  
4) **AWS SQS**: The processed data or corresponding notifications are dispatched to an Amazon SQS queue, ensuring reliable and decoupled message handling.  
5) **AWS Glue Crawler**: This crawler inspects the S3 data, identifies its structure, and updates the AWS Glue Data Catalog so that the data can be easily queried.  
6) **AWS Glue Data Catalog**: This service keeps a record of the raw data’s metadata, making it accessible to other AWS services.  
7) **Amazon EventBridge**: Monitors specific triggers or events and initiates tasks whenever new data arrives or when processing jobs are finished.  
8) **AWS Glue ETL**: An ETL job is carried out to refine, transform, and load the data.  
9) **Amazon S3 (Processed Zone)**: Refined data is deposited in another S3 bucket, labeled as the "Processed Zone," making it available in a ready-to-use format.  
10) **Amazon EventBridge & AWS SNS**: EventBridge can activate notifications through SNS (Simple Notification Service) to alert subscribers about pipeline statuses or updates.