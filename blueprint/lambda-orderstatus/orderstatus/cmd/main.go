package main

import (
	"fmt"

	"github.com/aws/aws-lambda-go/lambda"
)

type OrderStatusRequest struct {
	OrderNumber string `json:"OrderNumber"`
}

type OrderStatusResponse struct {
	CustomerId        string `json:"CustomerId"`
	CustomerFirstName string `json:"CustomerFirstName"`
	CustomerLastName  string `json:"CustomerLastName"`
	OrderNumber       string `json:"OrderNumber"`
	OrderStatus       string `json:"OrderStatus"`
}

func LambdaHandler(request OrderStatusRequest) (OrderStatusResponse, error) {
	fmt.Printf("The request order status is %s", request.OrderNumber)
	return OrderStatusResponse{
		CustomerId:        "1214-22442-1888",
		CustomerFirstName: "Robert",
		CustomerLastName:  "Berhneyrt",
		OrderNumber:       request.OrderNumber,
		OrderStatus:       "Shipped",
	}, nil
}

func main() {
	lambda.Start(LambdaHandler)
}
