# Build a web messaging Chatbot calling an AWS Lambda via a Genesys Cloud Data Action (DRAFT)

> View the full [Build a Web Messaging Chatbot calling an AWS Lambda via a Genesys Cloud Data Action](https://developer.mypurecloud.com/blueprints/) article on the Genesys Cloud Developer Center. This Genesys Cloud Developer Blueprint demonstrates how to build a chatbot using Genesys Cloud's Web Chat capabilities and integrating that chatbot with an AWS lambda. 

This Genesys Cloud blueprint demonstrates how to build a Web Messaging-based chatbot using Genesys Cloud's Web Messaging capabilities and integrating that chatbot with an AWS lambda. 

This blueprint also demonstrates how to:

* Build a bot Genesys Cloud Architect flow that can be integrated with a Genesys Cloud Architect inbound message flow.
* Build an inbound message Genesys Cloud Architect flow. 
* Expose the the inbound message flow for consumption using a Genesys Cloud Web Messaging widget.
* Integrate an AWS Lambda in the inbound message flow using a Genesys Cloud Data Action.
* Deploy both the AWS Lambda, all AWS IAM roles and CX as Code components all from within a single Terraform/CX as Code project.


![Build a Web Messaging Chatbot calling an AWS Lambda via a Genesys Cloud Data Action](blueprint/images/overview.png "Build a Web Messaging Chatbot calling an AWS Lambda via a Genesys Cloud Data Action")
