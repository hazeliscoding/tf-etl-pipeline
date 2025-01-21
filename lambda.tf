data "archive_file" "lambda_zip" {
  type        = "zip"
  source_dir  = "${path.module}/lambda_functions" # directory containing your .py files
  output_path = "${path.module}/lambda_function.zip"
}

resource "aws_lambda_function" "s3_ingest_lambda" {
  function_name = "etl-s3-ingest"
  runtime       = "python3.9"
  handler       = "lambda_function.lambda_handler"

  filename         = data.archive_file.lambda_zip.output_path
  source_code_hash = data.archive_file.lambda_zip.output_base64sha256

  role = aws_iam_role.lambda_role.arn
}
