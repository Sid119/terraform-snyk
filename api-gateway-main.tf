module "api_gateway" {
  source        = "./child/"
  rest_api_name = var.api_name
}