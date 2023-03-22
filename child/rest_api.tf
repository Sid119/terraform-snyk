
# Create rest api type api-gateway
resource "aws_api_gateway_rest_api" "rest_api"{
    name = var.rest_api_name
}

# Create resource in above api
resource "aws_api_gateway_resource" "testing-resource" {
  rest_api_id = aws_api_gateway_rest_api.rest_api.id
  parent_id   = aws_api_gateway_rest_api.rest_api.root_resource_id
  path_part   = "testing"
}

resource "aws_api_gateway_method" "rest_api_get_method"{
  rest_api_id = aws_api_gateway_rest_api.rest_api.id
  resource_id = aws_api_gateway_resource.testing-resource.id
  http_method = "GET"
  authorization = "NONE"
}