resource "null_resource" "compile_lambda" {
  provisioner "local-exec" {
    command = " pwd && cd ../lambda-orderstatus && GOARCH=arm64 GOOS=linux go build -tags lambda.norpc -o ./bin/bootstrap ./..."
  }
}

data "archive_file" "lambda_zip" {
  depends_on  = [null_resource.compile_lambda]
  type        = "zip"
  source_file = "${local.lambda_zip_dir}/bootstrap"
  output_path = "${local.lambda_zip_dir}/bootstrap.zip"
}
