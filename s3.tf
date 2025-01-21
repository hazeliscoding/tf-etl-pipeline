resource "aws_s3_bucket" "raw_zone" {
  bucket = "hazeliscoding-etl-raw-zone-bucket"
}

resource "aws_s3_bucket" "processed_zone" {
  bucket = "hazeliscoding-etl-processed-zone-bucket"
}
