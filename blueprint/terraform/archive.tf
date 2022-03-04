resource "null_resource" "compile_lambda" {
  provisioner "local-exec" {
    command = " pwd && cd ../lambda-orderstatus && GOOS=linux go build -o bin/main ./..."
  }
}

data "archive_file" "lambda_zip" {
  depends_on  = [null_resource.compile_lambda]
  type        = "zip"
  source_file = "${local.lambda_zip_dir}/main"
  output_path = "${local.lambda_zip_dir}/function.zip"
}
