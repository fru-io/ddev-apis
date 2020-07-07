# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [live/billing/v1alpha1/customer.proto](#live/billing/v1alpha1/customer.proto)
    - [Address](#ddev.billing.v1alpha1.Address)
    - [CreateCustomerRequest](#ddev.billing.v1alpha1.CreateCustomerRequest)
    - [CreateCustomerRequest.MetadataEntry](#ddev.billing.v1alpha1.CreateCustomerRequest.MetadataEntry)
    - [CreateCustomerResponse](#ddev.billing.v1alpha1.CreateCustomerResponse)
    - [Customer](#ddev.billing.v1alpha1.Customer)
    - [Customer.MetadataEntry](#ddev.billing.v1alpha1.Customer.MetadataEntry)
    - [DeleteCustomerRequest](#ddev.billing.v1alpha1.DeleteCustomerRequest)
    - [DeleteCustomerResponse](#ddev.billing.v1alpha1.DeleteCustomerResponse)
    - [GetCustomerRequest](#ddev.billing.v1alpha1.GetCustomerRequest)
    - [GetCustomerResponse](#ddev.billing.v1alpha1.GetCustomerResponse)
    - [ListCustomerRequest](#ddev.billing.v1alpha1.ListCustomerRequest)
    - [ListCustomerResponse](#ddev.billing.v1alpha1.ListCustomerResponse)
    - [Source](#ddev.billing.v1alpha1.Source)
    - [UpdateCustomerRequest](#ddev.billing.v1alpha1.UpdateCustomerRequest)
    - [UpdateCustomerRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdateCustomerRequest.MetadataEntry)
    - [UpdateCustomerResponse](#ddev.billing.v1alpha1.UpdateCustomerResponse)
  
- [live/billing/v1alpha1/product.proto](#live/billing/v1alpha1/product.proto)
    - [CreateProductRequest](#ddev.billing.v1alpha1.CreateProductRequest)
    - [CreateProductRequest.MetadataEntry](#ddev.billing.v1alpha1.CreateProductRequest.MetadataEntry)
    - [CreateProductResponse](#ddev.billing.v1alpha1.CreateProductResponse)
    - [DeleteProductRequest](#ddev.billing.v1alpha1.DeleteProductRequest)
    - [DeleteProductResponse](#ddev.billing.v1alpha1.DeleteProductResponse)
    - [GetProductRequest](#ddev.billing.v1alpha1.GetProductRequest)
    - [GetProductResponse](#ddev.billing.v1alpha1.GetProductResponse)
    - [ListProductRequest](#ddev.billing.v1alpha1.ListProductRequest)
    - [ListProductResponse](#ddev.billing.v1alpha1.ListProductResponse)
    - [Product](#ddev.billing.v1alpha1.Product)
    - [Product.MetadataEntry](#ddev.billing.v1alpha1.Product.MetadataEntry)
    - [UpdateProductRequest](#ddev.billing.v1alpha1.UpdateProductRequest)
    - [UpdateProductRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdateProductRequest.MetadataEntry)
    - [UpdateProductResponse](#ddev.billing.v1alpha1.UpdateProductResponse)
  
- [live/billing/v1alpha1/auth.proto](#live/billing/v1alpha1/auth.proto)
    - [CreateTokenRequest](#ddev.billing.v1alpha1.CreateTokenRequest)
    - [CreateTokenResponse](#ddev.billing.v1alpha1.CreateTokenResponse)
    - [ListCapabilitiesRequest](#ddev.billing.v1alpha1.ListCapabilitiesRequest)
    - [ListCapabilitiesResponse](#ddev.billing.v1alpha1.ListCapabilitiesResponse)
    - [SetCapabilitiesRequest](#ddev.billing.v1alpha1.SetCapabilitiesRequest)
    - [SetCapabilitiesResponse](#ddev.billing.v1alpha1.SetCapabilitiesResponse)
  
    - [Capability](#ddev.billing.v1alpha1.Capability)
  
- [live/billing/v1alpha1/subscriptionitem.proto](#live/billing/v1alpha1/subscriptionitem.proto)
    - [Price](#ddev.billing.v1alpha1.Price)
    - [Price.MetadataEntry](#ddev.billing.v1alpha1.Price.MetadataEntry)
    - [SubscriptionItem](#ddev.billing.v1alpha1.SubscriptionItem)
    - [SubscriptionItem.MetadataEntry](#ddev.billing.v1alpha1.SubscriptionItem.MetadataEntry)
  
    - [PriceType](#ddev.billing.v1alpha1.PriceType)
  
- [live/billing/v1alpha1/service.proto](#live/billing/v1alpha1/service.proto)
    - [Billing](#ddev.billing.v1alpha1.Billing)
  
- [live/billing/v1alpha1/workspace.proto](#live/billing/v1alpha1/workspace.proto)
    - [AddWorkspaceAdminRequest](#ddev.billing.v1alpha1.AddWorkspaceAdminRequest)
    - [AddWorkspaceAdminResponse](#ddev.billing.v1alpha1.AddWorkspaceAdminResponse)
    - [AddWorkspaceDeveloperRequest](#ddev.billing.v1alpha1.AddWorkspaceDeveloperRequest)
    - [AddWorkspaceDeveloperResponse](#ddev.billing.v1alpha1.AddWorkspaceDeveloperResponse)
    - [DeleteWorkspaceAdminRequest](#ddev.billing.v1alpha1.DeleteWorkspaceAdminRequest)
    - [DeleteWorkspaceAdminResponse](#ddev.billing.v1alpha1.DeleteWorkspaceAdminResponse)
    - [DeleteWorkspaceDeveloperRequest](#ddev.billing.v1alpha1.DeleteWorkspaceDeveloperRequest)
    - [DeleteWorkspaceDeveloperResponse](#ddev.billing.v1alpha1.DeleteWorkspaceDeveloperResponse)
    - [ListWorkspaceRequest](#ddev.billing.v1alpha1.ListWorkspaceRequest)
    - [ListWorkspaceResponse](#ddev.billing.v1alpha1.ListWorkspaceResponse)
    - [Workspace](#ddev.billing.v1alpha1.Workspace)
  
    - [ListWorkspaceRequest.ListWorkspaceScope](#ddev.billing.v1alpha1.ListWorkspaceRequest.ListWorkspaceScope)
  
- [live/billing/v1alpha1/common.proto](#live/billing/v1alpha1/common.proto)
    - [Recurring](#ddev.billing.v1alpha1.Recurring)
  
    - [AgggregateUsage](#ddev.billing.v1alpha1.AgggregateUsage)
    - [Currency](#ddev.billing.v1alpha1.Currency)
    - [Interval](#ddev.billing.v1alpha1.Interval)
    - [UsageType](#ddev.billing.v1alpha1.UsageType)
  
- [live/billing/v1alpha1/subscription.proto](#live/billing/v1alpha1/subscription.proto)
    - [CancelSubscriptionRequest](#ddev.billing.v1alpha1.CancelSubscriptionRequest)
    - [CancelSubscriptionResponse](#ddev.billing.v1alpha1.CancelSubscriptionResponse)
    - [CreateSubscriptionRequest](#ddev.billing.v1alpha1.CreateSubscriptionRequest)
    - [CreateSubscriptionRequest.MetadataEntry](#ddev.billing.v1alpha1.CreateSubscriptionRequest.MetadataEntry)
    - [CreateSubscriptionResponse](#ddev.billing.v1alpha1.CreateSubscriptionResponse)
    - [DeleteSubscriptionRequest](#ddev.billing.v1alpha1.DeleteSubscriptionRequest)
    - [DeleteSubscriptionResponse](#ddev.billing.v1alpha1.DeleteSubscriptionResponse)
    - [GetSubscriptionRequest](#ddev.billing.v1alpha1.GetSubscriptionRequest)
    - [GetSubscriptionResponse](#ddev.billing.v1alpha1.GetSubscriptionResponse)
    - [ListSubscriptionRequest](#ddev.billing.v1alpha1.ListSubscriptionRequest)
    - [ListSubscriptionResponse](#ddev.billing.v1alpha1.ListSubscriptionResponse)
    - [Subscription](#ddev.billing.v1alpha1.Subscription)
    - [UpdateSubscriptionRequest](#ddev.billing.v1alpha1.UpdateSubscriptionRequest)
    - [UpdateSubscriptionRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdateSubscriptionRequest.MetadataEntry)
    - [UpdateSubscriptionResponse](#ddev.billing.v1alpha1.UpdateSubscriptionResponse)
  
    - [SubscriptionState](#ddev.billing.v1alpha1.SubscriptionState)
  
- [live/billing/v1alpha1/plan.proto](#live/billing/v1alpha1/plan.proto)
    - [CreatePlanRequest](#ddev.billing.v1alpha1.CreatePlanRequest)
    - [CreatePlanRequest.MetadataEntry](#ddev.billing.v1alpha1.CreatePlanRequest.MetadataEntry)
    - [CreatePlanResponse](#ddev.billing.v1alpha1.CreatePlanResponse)
    - [DeletePlanRequest](#ddev.billing.v1alpha1.DeletePlanRequest)
    - [DeletePlanResponse](#ddev.billing.v1alpha1.DeletePlanResponse)
    - [GetPlanRequest](#ddev.billing.v1alpha1.GetPlanRequest)
    - [GetPlanResponse](#ddev.billing.v1alpha1.GetPlanResponse)
    - [ListPlanRequest](#ddev.billing.v1alpha1.ListPlanRequest)
    - [ListPlanResponse](#ddev.billing.v1alpha1.ListPlanResponse)
    - [Plan](#ddev.billing.v1alpha1.Plan)
    - [Plan.MetadataEntry](#ddev.billing.v1alpha1.Plan.MetadataEntry)
    - [UpdatePlanRequest](#ddev.billing.v1alpha1.UpdatePlanRequest)
    - [UpdatePlanRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdatePlanRequest.MetadataEntry)
    - [UpdatePlanResponse](#ddev.billing.v1alpha1.UpdatePlanResponse)
  
- [Scalar Value Types](#scalar-value-types)



<a name="live/billing/v1alpha1/customer.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/customer.proto



<a name="ddev.billing.v1alpha1.Address"></a>

### Address



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| line1 | [string](#string) |  | `Required` - Address line 1 (e.g., street, PO Box, or company name). |
| City | [string](#string) |  | `Optional` - City, district, suburb, town, or village. |
| country | [string](#string) |  | `Optional` - Two-letter country code (ISO 3166-1 alpha-2). |
| line2 | [string](#string) |  | `Optional` - Address line 2 (e.g., apartment, suite, unit, or building). |
| postal_code | [string](#string) |  | `Optional` - ZIP or postal code. |
| state | [string](#string) |  | `Optional` - State, county, province, or region. |






<a name="ddev.billing.v1alpha1.CreateCustomerRequest"></a>

### CreateCustomerRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [Address](#ddev.billing.v1alpha1.Address) |  | `Optional` - The customer’s address. |
| description | [string](#string) |  | `Optional` - An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard. |
| email | [string](#string) |  | `Optional` - Customer’s email address. It’s displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to 512 characters. |
| metadata | [CreateCustomerRequest.MetadataEntry](#ddev.billing.v1alpha1.CreateCustomerRequest.MetadataEntry) | repeated | `Optional` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. |
| name | [string](#string) |  | `Optional` - The customer’s full name or business name. |
| payment_method | [string](#string) |  | `Optional` - The ID of the PaymentMethod to attach to the customer. |
| phone | [string](#string) |  | `Optional` - The customer’s phone number. |
| source | [Source](#ddev.billing.v1alpha1.Source) |  | `Optional` - The customer’s payment sources, if any. This is only a reference to existing sources. Will not trigger the creation of a source. |






<a name="ddev.billing.v1alpha1.CreateCustomerRequest.MetadataEntry"></a>

### CreateCustomerRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.CreateCustomerResponse"></a>

### CreateCustomerResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| customer | [Customer](#ddev.billing.v1alpha1.Customer) |  | `OutputOnly` - The customer created. |






<a name="ddev.billing.v1alpha1.Customer"></a>

### Customer
A customer on ddev-live


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `OutputOnly` - The ID of the customer. |
| name | [string](#string) |  | `OutputOnly` - The name of the customer. |
| description | [string](#string) |  | `OutputOnly` - A description for this customer. |
| email | [string](#string) |  | `OutputOnly` - The primary email address for this customer. |
| address | [Address](#ddev.billing.v1alpha1.Address) |  | `OutputOnly` - Address associated with thiis customer. |
| metadata | [Customer.MetadataEntry](#ddev.billing.v1alpha1.Customer.MetadataEntry) | repeated | `OutputOnly` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. |
| phone | [string](#string) |  | `OutputOnly` - The customer’s phone number. |
| defaultSource | [string](#string) |  | `OutputOnly` - The default payment source. |






<a name="ddev.billing.v1alpha1.Customer.MetadataEntry"></a>

### Customer.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.DeleteCustomerRequest"></a>

### DeleteCustomerRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Required` - The id of the customer to delete. |






<a name="ddev.billing.v1alpha1.DeleteCustomerResponse"></a>

### DeleteCustomerResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| customer | [Customer](#ddev.billing.v1alpha1.Customer) |  | `OutputOnly` - The deleted customer. |






<a name="ddev.billing.v1alpha1.GetCustomerRequest"></a>

### GetCustomerRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Required` - The id of the customr to retrieve. |






<a name="ddev.billing.v1alpha1.GetCustomerResponse"></a>

### GetCustomerResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| customer | [Customer](#ddev.billing.v1alpha1.Customer) |  | `OutputOnly` - The customer with the provided ID. |






<a name="ddev.billing.v1alpha1.ListCustomerRequest"></a>

### ListCustomerRequest
Request message for `Billing.ListCustomers`.






<a name="ddev.billing.v1alpha1.ListCustomerResponse"></a>

### ListCustomerResponse
Response message for `Billing.ListCustomers`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| Customers | [Customer](#ddev.billing.v1alpha1.Customer) | repeated | `OutputOnly` - The list of available Customers. |






<a name="ddev.billing.v1alpha1.Source"></a>

### Source



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [string](#string) |  | `Required` - Unique identifier for the object. |






<a name="ddev.billing.v1alpha1.UpdateCustomerRequest"></a>

### UpdateCustomerRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Required` - The ID of the customer to update |
| address | [Address](#ddev.billing.v1alpha1.Address) |  | `Optional` - The customer’s address. |
| description | [string](#string) |  | `Optional` - An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard. |
| email | [string](#string) |  | `Optional` - Customer’s email address. It’s displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to 512 characters. |
| metadata | [UpdateCustomerRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdateCustomerRequest.MetadataEntry) | repeated | `Optional` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. |
| name | [string](#string) |  | `Optional` - The customer’s full name or business name. |
| phone | [string](#string) |  | `Optional` - The customer’s phone number. |
| defaultSource | [string](#string) |  | `Optional` - The default payment source. |






<a name="ddev.billing.v1alpha1.UpdateCustomerRequest.MetadataEntry"></a>

### UpdateCustomerRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.UpdateCustomerResponse"></a>

### UpdateCustomerResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| customer | [Customer](#ddev.billing.v1alpha1.Customer) |  | `OutputOnly` - The updated customer. |





 

 

 

 



<a name="live/billing/v1alpha1/product.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/product.proto



<a name="ddev.billing.v1alpha1.CreateProductRequest"></a>

### CreateProductRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` - The product’s name, meant to be displayable to the customer. Whenever this product is sold via a subscription, name will show up on associated invoice line item descriptions. |
| active | [bool](#bool) |  | `Optional` - Whether the product is currently available for purchase. Defaults to true. |
| description | [string](#string) |  | `Optional` - The product’s description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes. `Optional` |
| metadata | [CreateProductRequest.MetadataEntry](#ddev.billing.v1alpha1.CreateProductRequest.MetadataEntry) | repeated | `Optional` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. `Optional` |






<a name="ddev.billing.v1alpha1.CreateProductRequest.MetadataEntry"></a>

### CreateProductRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.CreateProductResponse"></a>

### CreateProductResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| product | [Product](#ddev.billing.v1alpha1.Product) |  | `OutputOnly` - The product created. |






<a name="ddev.billing.v1alpha1.DeleteProductRequest"></a>

### DeleteProductRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` - The name of the product to delete. |






<a name="ddev.billing.v1alpha1.DeleteProductResponse"></a>

### DeleteProductResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| product | [Product](#ddev.billing.v1alpha1.Product) |  | `OutputOnly` - The product deleted. |






<a name="ddev.billing.v1alpha1.GetProductRequest"></a>

### GetProductRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` - The name of the product. |






<a name="ddev.billing.v1alpha1.GetProductResponse"></a>

### GetProductResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| product | [Product](#ddev.billing.v1alpha1.Product) |  | `OutputOnly` - The product. |






<a name="ddev.billing.v1alpha1.ListProductRequest"></a>

### ListProductRequest
Request message for `Billing.ListProducts`.






<a name="ddev.billing.v1alpha1.ListProductResponse"></a>

### ListProductResponse
Response message for `Billing.ListProducts`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| products | [Product](#ddev.billing.v1alpha1.Product) | repeated | `OutputOnly` - The list of available products. |






<a name="ddev.billing.v1alpha1.Product"></a>

### Product



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `OutputOnly` - An identifier will be randomly generated by Stripe. You can optionally override this ID, but the ID must be unique across all products in your Stripe account. |
| name | [string](#string) |  | `OutputOnly` - The product’s name, meant to be displayable to the customer. Whenever this product is sold via a subscription, name will show up on associated invoice line item descriptions. |
| active | [bool](#bool) |  | `OutputOnly` - Whether the product is currently available for purchase. Defaults to true. |
| description | [string](#string) |  | `OutputOnly` - The product’s description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes. |
| metadata | [Product.MetadataEntry](#ddev.billing.v1alpha1.Product.MetadataEntry) | repeated | `OutputOnly` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. |






<a name="ddev.billing.v1alpha1.Product.MetadataEntry"></a>

### Product.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.UpdateProductRequest"></a>

### UpdateProductRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Required` - The name of the product. |
| active | [bool](#bool) |  | `Optional` - Whether the product is currently available for purchase. Defaults to true. |
| description | [string](#string) |  | `Optional` - The product’s description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes. |
| metadata | [UpdateProductRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdateProductRequest.MetadataEntry) | repeated | `Optional` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. |
| name | [string](#string) |  | `Optional` - The product’s name, meant to be displayable to the customer. Whenever this product is sold via a subscription, name will show up on associated invoice line item descriptions. |






<a name="ddev.billing.v1alpha1.UpdateProductRequest.MetadataEntry"></a>

### UpdateProductRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.UpdateProductResponse"></a>

### UpdateProductResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| product | [Product](#ddev.billing.v1alpha1.Product) |  | `OutputOnly` - The updated product. |





 

 

 

 



<a name="live/billing/v1alpha1/auth.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/auth.proto



<a name="ddev.billing.v1alpha1.CreateTokenRequest"></a>

### CreateTokenRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apiToken | [string](#string) |  | The long lived token provided by the ddev-live dashboard |






<a name="ddev.billing.v1alpha1.CreateTokenResponse"></a>

### CreateTokenResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [string](#string) |  | A generated short lived token to be provided to scoped clients |






<a name="ddev.billing.v1alpha1.ListCapabilitiesRequest"></a>

### ListCapabilitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | The user email to list capabilties for |






<a name="ddev.billing.v1alpha1.ListCapabilitiesResponse"></a>

### ListCapabilitiesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| capabilities | [Capability](#ddev.billing.v1alpha1.Capability) | repeated | The capabilties of the requested user |






<a name="ddev.billing.v1alpha1.SetCapabilitiesRequest"></a>

### SetCapabilitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | The user email to update capabilities for |
| capabilities | [Capability](#ddev.billing.v1alpha1.Capability) | repeated | The capabilities to grant the user |






<a name="ddev.billing.v1alpha1.SetCapabilitiesResponse"></a>

### SetCapabilitiesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | The user email capabilties have been set for |
| capabilities | [Capability](#ddev.billing.v1alpha1.Capability) | repeated | The capabilties granted to this user |





 


<a name="ddev.billing.v1alpha1.Capability"></a>

### Capability
Describes a set of access policies for a user

| Name | Number | Description |
| ---- | ------ | ----------- |
| AuthTokenViewer | 0 | Describes a permission which can read the API scopes a user has. |
| AuthTokenEditor | 1 | Describes a permission which can issue different API access scopes within an organization |
| BillingViewer | 2 | Describes a permission which can access billing artifacts such as invoices |
| BillingEditor | 3 | Describes a permission which can modify elements such as their subscription |
| WorkspaceAdmin | 4 | Describes a permission which is an admin of a workspace |
| WorkspaceViewer | 5 | Describes a permission which has read capability for workspace objects |
| SiteEditor | 6 | Describes a permission which is capable of creating or modifying a site |


 

 

 



<a name="live/billing/v1alpha1/subscriptionitem.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/subscriptionitem.proto



<a name="ddev.billing.v1alpha1.Price"></a>

### Price



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Unique identifier for the object. |
| active | [bool](#bool) |  | `Optional` - Whether the price can be used for new purchases. |
| currency | [Currency](#ddev.billing.v1alpha1.Currency) |  | `Optional` - The ISO Currency. |
| metadata | [Price.MetadataEntry](#ddev.billing.v1alpha1.Price.MetadataEntry) | repeated | `Optional` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. |
| nickname | [string](#string) |  | `Optional` - A brief description of the plan, hidden from customers. |
| product | [string](#string) |  | `Optional` - The ID of the product this price is associated with. |
| recurring | [Recurring](#ddev.billing.v1alpha1.Recurring) |  | `Optional` - The recurring components of a price such as interval and usage_type. |
| type | [PriceType](#ddev.billing.v1alpha1.PriceType) |  | `Optional` - One of one_time or recurring depending on whether the price is for a one-time purchase or a recurring (subscription) purchase. |
| amount | [int64](#int64) |  | `Optional` - The unit amount in cents to be charged, represented as a whole integer if possible. |






<a name="ddev.billing.v1alpha1.Price.MetadataEntry"></a>

### Price.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.SubscriptionItem"></a>

### SubscriptionItem



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Required` -Unique identifier for the object. |
| subscription | [string](#string) |  | `Required` -The subscription this subscription_item belongs to. |
| metadata | [SubscriptionItem.MetadataEntry](#ddev.billing.v1alpha1.SubscriptionItem.MetadataEntry) | repeated | `Optional` -Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. |
| plan | [string](#string) |  | `Optional` - Hash describing the plan the customer is subscribed to. |
| price | [Price](#ddev.billing.v1alpha1.Price) |  | `Optional` - The price the customer is subscribed to. |
| quantity | [uint32](#uint32) |  | `Optional` - The quantity of the plan to which the customer should be subscribed. |






<a name="ddev.billing.v1alpha1.SubscriptionItem.MetadataEntry"></a>

### SubscriptionItem.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |





 


<a name="ddev.billing.v1alpha1.PriceType"></a>

### PriceType


| Name | Number | Description |
| ---- | ------ | ----------- |
| RECURRING | 0 |  |
| ONE_TIME | 1 |  |


 

 

 



<a name="live/billing/v1alpha1/service.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/service.proto


 

 

 


<a name="ddev.billing.v1alpha1.Billing"></a>

### Billing
The Billing service provides administrative functions over a users ddev-live account.
To access the billing service consumers will have to initialize an authenticated client.  This requires
several metadata to be passed to the client.

`x-auth-token` which is a authentication token for the call.  In most cases this will be a temporary token 
issued by the API.  This can be the integration token provided on the dashboard when retrieving temporary tokens.

`x-ddev-workspace` which is the workspace for all workspace scoped procedures.  For example a client request `ListSubscriptions` will list all subscriptions in the workspace whose value is derived from the key `x-ddev-workspace`.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateToken | [CreateTokenRequest](#ddev.billing.v1alpha1.CreateTokenRequest) | [CreateTokenResponse](#ddev.billing.v1alpha1.CreateTokenResponse) | Creates an ID token from a refresh token |
| SetCapabilities | [SetCapabilitiesRequest](#ddev.billing.v1alpha1.SetCapabilitiesRequest) | [SetCapabilitiesResponse](#ddev.billing.v1alpha1.SetCapabilitiesResponse) | Updates a users API capabilities. Will requre a refresh of their token through CreateToken. |
| ListCapabilities | [ListCapabilitiesRequest](#ddev.billing.v1alpha1.ListCapabilitiesRequest) | [ListCapabilitiesResponse](#ddev.billing.v1alpha1.ListCapabilitiesResponse) | Lists a users API capabilities. |
| CreateCustomer | [CreateCustomerRequest](#ddev.billing.v1alpha1.CreateCustomerRequest) | [CreateCustomerResponse](#ddev.billing.v1alpha1.CreateCustomerResponse) |  |
| GetCustomer | [GetCustomerRequest](#ddev.billing.v1alpha1.GetCustomerRequest) | [GetCustomerResponse](#ddev.billing.v1alpha1.GetCustomerResponse) |  |
| ListCustomers | [ListCustomerRequest](#ddev.billing.v1alpha1.ListCustomerRequest) | [ListCustomerResponse](#ddev.billing.v1alpha1.ListCustomerResponse) |  |
| UpdateCustomer | [UpdateCustomerRequest](#ddev.billing.v1alpha1.UpdateCustomerRequest) | [UpdateCustomerResponse](#ddev.billing.v1alpha1.UpdateCustomerResponse) |  |
| CreateSubscription | [CreateSubscriptionRequest](#ddev.billing.v1alpha1.CreateSubscriptionRequest) | [CreateSubscriptionResponse](#ddev.billing.v1alpha1.CreateSubscriptionResponse) | Create a subscription in the client workspace. Requires client metadata `x-ddev-workspace` to be set. |
| GetSubscription | [GetSubscriptionRequest](#ddev.billing.v1alpha1.GetSubscriptionRequest) | [GetSubscriptionResponse](#ddev.billing.v1alpha1.GetSubscriptionResponse) | Get a subscription in the client workspace. Requires client metadata `x-ddev-workspace` to be set. |
| ListSubscriptions | [ListSubscriptionRequest](#ddev.billing.v1alpha1.ListSubscriptionRequest) | [ListSubscriptionResponse](#ddev.billing.v1alpha1.ListSubscriptionResponse) | List all subscriptions in the client workspace. Requires client metadata `x-ddev-workspace` to be set. |
| UpdateSubscription | [UpdateSubscriptionRequest](#ddev.billing.v1alpha1.UpdateSubscriptionRequest) | [UpdateSubscriptionResponse](#ddev.billing.v1alpha1.UpdateSubscriptionResponse) |  |
| CancelSubscription | [CancelSubscriptionRequest](#ddev.billing.v1alpha1.CancelSubscriptionRequest) | [CancelSubscriptionResponse](#ddev.billing.v1alpha1.CancelSubscriptionResponse) | `Deprecated` Update a subscription in the client workspace. Requires client metadata `x-ddev-workspace` to be set. |
| DeleteSubscription | [DeleteSubscriptionRequest](#ddev.billing.v1alpha1.DeleteSubscriptionRequest) | [DeleteSubscriptionResponse](#ddev.billing.v1alpha1.DeleteSubscriptionResponse) | Delete a subscription in the client workspace. Requires client metadata `x-ddev-workspace` to be set. |
| CreateProduct | [CreateProductRequest](#ddev.billing.v1alpha1.CreateProductRequest) | [CreateProductResponse](#ddev.billing.v1alpha1.CreateProductResponse) |  |
| GetProduct | [GetProductRequest](#ddev.billing.v1alpha1.GetProductRequest) | [GetProductResponse](#ddev.billing.v1alpha1.GetProductResponse) |  |
| ListProduct | [ListProductRequest](#ddev.billing.v1alpha1.ListProductRequest) | [ListProductResponse](#ddev.billing.v1alpha1.ListProductResponse) |  |
| UpdateProduct | [UpdateProductRequest](#ddev.billing.v1alpha1.UpdateProductRequest) | [UpdateProductResponse](#ddev.billing.v1alpha1.UpdateProductResponse) |  |
| DeleteProduct | [DeleteProductRequest](#ddev.billing.v1alpha1.DeleteProductRequest) | [DeleteProductResponse](#ddev.billing.v1alpha1.DeleteProductResponse) |  |
| CreatePlan | [CreatePlanRequest](#ddev.billing.v1alpha1.CreatePlanRequest) | [CreatePlanResponse](#ddev.billing.v1alpha1.CreatePlanResponse) |  |
| GetPlan | [GetPlanRequest](#ddev.billing.v1alpha1.GetPlanRequest) | [GetPlanResponse](#ddev.billing.v1alpha1.GetPlanResponse) |  |
| ListPlan | [ListPlanRequest](#ddev.billing.v1alpha1.ListPlanRequest) | [ListPlanResponse](#ddev.billing.v1alpha1.ListPlanResponse) |  |
| UpdatePlan | [UpdatePlanRequest](#ddev.billing.v1alpha1.UpdatePlanRequest) | [UpdatePlanResponse](#ddev.billing.v1alpha1.UpdatePlanResponse) |  |
| DeletePlan | [DeletePlanRequest](#ddev.billing.v1alpha1.DeletePlanRequest) | [DeletePlanResponse](#ddev.billing.v1alpha1.DeletePlanResponse) |  |
| ListWorkspaces | [ListWorkspaceRequest](#ddev.billing.v1alpha1.ListWorkspaceRequest) | [ListWorkspaceResponse](#ddev.billing.v1alpha1.ListWorkspaceResponse) | ListWorkspaces will return a list of workspaces the user has authorization for |
| AddWorkspaceAdmin | [AddWorkspaceAdminRequest](#ddev.billing.v1alpha1.AddWorkspaceAdminRequest) | [AddWorkspaceAdminResponse](#ddev.billing.v1alpha1.AddWorkspaceAdminResponse) | Add an administrator to a workspace. Requires a workspace administrator token. |
| AddWorkspaceDeveloper | [AddWorkspaceDeveloperRequest](#ddev.billing.v1alpha1.AddWorkspaceDeveloperRequest) | [AddWorkspaceDeveloperResponse](#ddev.billing.v1alpha1.AddWorkspaceDeveloperResponse) | Add a developer to a workspace. Requires a workspace administrator token. |
| DeleteWorkspaceAdmin | [DeleteWorkspaceAdminRequest](#ddev.billing.v1alpha1.DeleteWorkspaceAdminRequest) | [DeleteWorkspaceAdminResponse](#ddev.billing.v1alpha1.DeleteWorkspaceAdminResponse) | Remove an administrator from a workspace. Requires a workspace administrator token. An administrator cannot remove themselves. |
| DeleteWorkspaceDeveloper | [DeleteWorkspaceDeveloperRequest](#ddev.billing.v1alpha1.DeleteWorkspaceDeveloperRequest) | [DeleteWorkspaceDeveloperResponse](#ddev.billing.v1alpha1.DeleteWorkspaceDeveloperResponse) | Remove a developer from a workspace. Requires a workspace administrator token. |

 



<a name="live/billing/v1alpha1/workspace.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/workspace.proto



<a name="ddev.billing.v1alpha1.AddWorkspaceAdminRequest"></a>

### AddWorkspaceAdminRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the workspace to add this administrator to. |
| email | [string](#string) |  | `Required` The email of the workspace administrator |






<a name="ddev.billing.v1alpha1.AddWorkspaceAdminResponse"></a>

### AddWorkspaceAdminResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | `OutputOnly` The updated workspace resource. |






<a name="ddev.billing.v1alpha1.AddWorkspaceDeveloperRequest"></a>

### AddWorkspaceDeveloperRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the workspace to add this developer to. |
| email | [string](#string) |  | `Required` The email of the workspace developer. |






<a name="ddev.billing.v1alpha1.AddWorkspaceDeveloperResponse"></a>

### AddWorkspaceDeveloperResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | `OutputOnly` The updated workspace resource. |






<a name="ddev.billing.v1alpha1.DeleteWorkspaceAdminRequest"></a>

### DeleteWorkspaceAdminRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the workspace to remove this administrator from. |
| email | [string](#string) |  | `Required` The email of the workspace administrator. |






<a name="ddev.billing.v1alpha1.DeleteWorkspaceAdminResponse"></a>

### DeleteWorkspaceAdminResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | `OutputOnly` The updated workspace resource. |






<a name="ddev.billing.v1alpha1.DeleteWorkspaceDeveloperRequest"></a>

### DeleteWorkspaceDeveloperRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the workspace to remove this developer from. |
| email | [string](#string) |  | `Required` The email of the workspace developer. |






<a name="ddev.billing.v1alpha1.DeleteWorkspaceDeveloperResponse"></a>

### DeleteWorkspaceDeveloperResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | `OutputOnly` The updated workspace resource. |






<a name="ddev.billing.v1alpha1.ListWorkspaceRequest"></a>

### ListWorkspaceRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| Scope | [ListWorkspaceRequest.ListWorkspaceScope](#ddev.billing.v1alpha1.ListWorkspaceRequest.ListWorkspaceScope) |  | `Optional` The scope of the list request. Defaults to `ListWorkspaceScope.DEVELOPER`. |






<a name="ddev.billing.v1alpha1.ListWorkspaceResponse"></a>

### ListWorkspaceResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspaces | [Workspace](#ddev.billing.v1alpha1.Workspace) | repeated | `OutputOnly` - A workspace for the current user |






<a name="ddev.billing.v1alpha1.Workspace"></a>

### Workspace



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `OutputOnly` Workspace Name. |
| admins | [string](#string) | repeated | `OutputOnly` Administrators of the workspace |
| developers | [string](#string) | repeated | `OutputOnly` Developers in the workspace |





 


<a name="ddev.billing.v1alpha1.ListWorkspaceRequest.ListWorkspaceScope"></a>

### ListWorkspaceRequest.ListWorkspaceScope
Defines the scope of the request.  If the scope is set to ADMIN the response will contain only workspaces where the provided token user is an administrator.
If the request is set to DEVELOPER the response will contain any workspace where the provided token user is an administrator or a developer.

| Name | Number | Description |
| ---- | ------ | ----------- |
| DEVELOPER | 0 |  |
| ADMIN | 1 |  |


 

 

 



<a name="live/billing/v1alpha1/common.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/common.proto



<a name="ddev.billing.v1alpha1.Recurring"></a>

### Recurring



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| aggregate_usage | [AgggregateUsage](#ddev.billing.v1alpha1.AgggregateUsage) |  | `Optional` - Specifies a usage aggregation strategy for prices of usage_type=metered. Allowed values are sum for summing up all usage during a period, last_during_period for using the last usage record reported within a period, last_ever for using the last usage record ever (across period bounds) or max which uses the usage record with the maximum reported usage during a period. Defaults to sum. |
| interval | [Interval](#ddev.billing.v1alpha1.Interval) |  | `Optional` - The frequency at which a subscription is billed. One of day, week, month or year. |
| interval_count | [uint32](#uint32) |  | `Optional` - The number of intervals (specified in the interval attribute) between subscription billings. For example, interval=month and interval_count=3 bills every 3 months. |
| usage_type | [UsageType](#ddev.billing.v1alpha1.UsageType) |  | `Optional` - Configures how the quantity per period should be determined. Can be either metered or licensed. licensed automatically bills the quantity set when adding it to a subscription. metered aggregates the total usage based on usage records. Defaults to licensed. |





 


<a name="ddev.billing.v1alpha1.AgggregateUsage"></a>

### AgggregateUsage


| Name | Number | Description |
| ---- | ------ | ----------- |
| SUM | 0 |  |
| LAST_DURING_PERIOD | 1 |  |
| LAST_EVER | 2 |  |



<a name="ddev.billing.v1alpha1.Currency"></a>

### Currency
Supported currencies for ddev-live

| Name | Number | Description |
| ---- | ------ | ----------- |
| USD | 0 |  |



<a name="ddev.billing.v1alpha1.Interval"></a>

### Interval


| Name | Number | Description |
| ---- | ------ | ----------- |
| MONTH | 0 |  |
| YEAR | 1 |  |
| DAY | 2 |  |
| WEEK | 3 |  |



<a name="ddev.billing.v1alpha1.UsageType"></a>

### UsageType


| Name | Number | Description |
| ---- | ------ | ----------- |
| LICENSED | 0 |  |
| METERED | 1 |  |


 

 

 



<a name="live/billing/v1alpha1/subscription.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/subscription.proto



<a name="ddev.billing.v1alpha1.CancelSubscriptionRequest"></a>

### CancelSubscriptionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Required` - The id of the subscription to cancel. |
| invoice_now | [bool](#bool) |  | `Optional` - Will generate a final invoice that invoices for any un-invoiced metered usage and new/pending proration invoice items. |
| prorate | [bool](#bool) |  | `Optional` - Will generate a proration invoice item that credits remaining unused time until the subscription period end. |






<a name="ddev.billing.v1alpha1.CancelSubscriptionResponse"></a>

### CancelSubscriptionResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscription | [Subscription](#ddev.billing.v1alpha1.Subscription) |  | `Optional` - The cancelled subscription. |






<a name="ddev.billing.v1alpha1.CreateSubscriptionRequest"></a>

### CreateSubscriptionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| CustomerID | [string](#string) |  | `Required` - The identifier of the customer to subscribe. |
| items | [SubscriptionItem](#ddev.billing.v1alpha1.SubscriptionItem) | repeated | `Required` - A list of up to 20 subscription items, each with an attached plan. |
| workspace | [string](#string) |  | `Required` - The workspace which this subscription belongs. |
| cancel_at_period_end | [bool](#bool) |  | `Optional` - Boolean indicating whether this subscription should cancel at the end of the current period. |
| metadata | [CreateSubscriptionRequest.MetadataEntry](#ddev.billing.v1alpha1.CreateSubscriptionRequest.MetadataEntry) | repeated | `Optional` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. |
| trial_end | [int64](#int64) |  | `Optional` - Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value now can be provided to end the customer’s trial immediately. Can be at most two years from billing_cycle_anchor. |
| trial_period_days | [int32](#int32) |  | `Optional` - Integer representing the number of trial period days before the customer is charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. |
| default_source | [string](#string) |  | `Optional` - ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If not set, defaults to the customer’s default source. |






<a name="ddev.billing.v1alpha1.CreateSubscriptionRequest.MetadataEntry"></a>

### CreateSubscriptionRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.CreateSubscriptionResponse"></a>

### CreateSubscriptionResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscription | [Subscription](#ddev.billing.v1alpha1.Subscription) |  | `Required` - The subscription created. |






<a name="ddev.billing.v1alpha1.DeleteSubscriptionRequest"></a>

### DeleteSubscriptionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` - The name of the subscription to delete. |






<a name="ddev.billing.v1alpha1.DeleteSubscriptionResponse"></a>

### DeleteSubscriptionResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscription | [Subscription](#ddev.billing.v1alpha1.Subscription) |  | `OutputOnly` - The subscription deleted. |






<a name="ddev.billing.v1alpha1.GetSubscriptionRequest"></a>

### GetSubscriptionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` - The name of the subscription. |
| workspace | [string](#string) |  | `Required` - The workspace of the subscription. |






<a name="ddev.billing.v1alpha1.GetSubscriptionResponse"></a>

### GetSubscriptionResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscription | [Subscription](#ddev.billing.v1alpha1.Subscription) |  | `OutputOnly` - The subscription matching this name. |






<a name="ddev.billing.v1alpha1.ListSubscriptionRequest"></a>

### ListSubscriptionRequest
Request message for `Billing.ListSubscriptions`.






<a name="ddev.billing.v1alpha1.ListSubscriptionResponse"></a>

### ListSubscriptionResponse
Response message for `Billing.ListSubscriptions`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscriptions | [Subscription](#ddev.billing.v1alpha1.Subscription) | repeated | `OutputOnly` - The subscriptions belonging to the customer account. |






<a name="ddev.billing.v1alpha1.Subscription"></a>

### Subscription



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `OutputOnly` - Name of the subscription. |
| id | [string](#string) |  | `OutputOnly` - ID of the subscription. |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | `OutputOnly` - The workspace the subscription belongs to. |
| CurrentPeriodStart | [int64](#int64) |  | `OutputOnly` - The UNIX timestamp for the billing period start. |
| CurrentPeriodEnd | [int64](#int64) |  | `OutputOnly` - The UNIX timestamp for the billing period end. |
| Active | [bool](#bool) |  | `OutputOnly` - If the subscription is currently active. |
| items | [SubscriptionItem](#ddev.billing.v1alpha1.SubscriptionItem) | repeated | `OutputOnly` - The subscription items this subscription shall contain. |
| state | [SubscriptionState](#ddev.billing.v1alpha1.SubscriptionState) |  | `OutputOnly` - Indicators about the state of the object internally to the platform. |






<a name="ddev.billing.v1alpha1.UpdateSubscriptionRequest"></a>

### UpdateSubscriptionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Required` - The id of the subscription. |
| cancel_at_period_end | [bool](#bool) |  | `Optional` - Boolean indicating whether this subscription should cancel at the end of the current period. |
| default_payment_method | [string](#string) |  | `Optional` - ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. If not set, invoices will use the default payment method in the customer’s invoice settings. |
| items | [SubscriptionItem](#ddev.billing.v1alpha1.SubscriptionItem) | repeated | `Optional` - List of subscription items, each with an attached plan. |
| metadata | [UpdateSubscriptionRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdateSubscriptionRequest.MetadataEntry) | repeated | `Optional` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. |






<a name="ddev.billing.v1alpha1.UpdateSubscriptionRequest.MetadataEntry"></a>

### UpdateSubscriptionRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.UpdateSubscriptionResponse"></a>

### UpdateSubscriptionResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscription | [Subscription](#ddev.billing.v1alpha1.Subscription) |  | `OutputOnly` - The subscription updated. |





 


<a name="ddev.billing.v1alpha1.SubscriptionState"></a>

### SubscriptionState


| Name | Number | Description |
| ---- | ------ | ----------- |
| UNKOWN | 0 |  |
| NOTREADY | 1 |  |
| READY | 2 |  |


 

 

 



<a name="live/billing/v1alpha1/plan.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/plan.proto



<a name="ddev.billing.v1alpha1.CreatePlanRequest"></a>

### CreatePlanRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [uint32](#uint32) |  | `Required for PER_UNIT plans` - A positive integer in cents (or 0 for a free plan) representing how much to charge on a recurring basis. |
| currency | [Currency](#ddev.billing.v1alpha1.Currency) |  | `Required` - The currency for this plan. |
| interval | [Interval](#ddev.billing.v1alpha1.Interval) |  | `Required` - The billing period frequency. |
| product | [string](#string) |  | `Required` - The product whose pricing the created plan will represent. This can either be the ID of an existing product, or a dictionary containing fields used to create a service product. |
| name | [string](#string) |  | `Required` - A unique name for this plan. |
| active | [bool](#bool) |  | `Optional` - Whether the plan is currently available for new subscriptions. Defaults to true. |
| metadata | [CreatePlanRequest.MetadataEntry](#ddev.billing.v1alpha1.CreatePlanRequest.MetadataEntry) | repeated | `Optional` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. |
| nickname | [string](#string) |  | `Optional` - A brief description of the plan, hidden from customers. |






<a name="ddev.billing.v1alpha1.CreatePlanRequest.MetadataEntry"></a>

### CreatePlanRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.CreatePlanResponse"></a>

### CreatePlanResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| plan | [Plan](#ddev.billing.v1alpha1.Plan) |  | `OutputOnly` - The plan created. |






<a name="ddev.billing.v1alpha1.DeletePlanRequest"></a>

### DeletePlanRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` - The name of the plan to delete. |






<a name="ddev.billing.v1alpha1.DeletePlanResponse"></a>

### DeletePlanResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| plan | [Plan](#ddev.billing.v1alpha1.Plan) |  | `OutputOnly` - The plan deleted. |






<a name="ddev.billing.v1alpha1.GetPlanRequest"></a>

### GetPlanRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` - The name of the plan. |






<a name="ddev.billing.v1alpha1.GetPlanResponse"></a>

### GetPlanResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| plan | [Plan](#ddev.billing.v1alpha1.Plan) |  | `OutputOnly` - The plan. |






<a name="ddev.billing.v1alpha1.ListPlanRequest"></a>

### ListPlanRequest
Request message for `Billing.ListPlans`.






<a name="ddev.billing.v1alpha1.ListPlanResponse"></a>

### ListPlanResponse
Response message for `Billing.ListPlans`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| plans | [Plan](#ddev.billing.v1alpha1.Plan) | repeated | `OutputOnly` - The list of available plans. |






<a name="ddev.billing.v1alpha1.Plan"></a>

### Plan



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `OutputOnly` - Whether the plan can be used for new purchases. |
| active | [bool](#bool) |  | `OutputOnly` - Whether the plan can be used for new purchases. |
| amount | [int64](#int64) |  | `OutputOnly` - Positive integer or zero. |
| currency | [string](#string) |  | `OutputOnly` - Three-letter ISO currency code, in lowercase. Must be a supported currency. |
| interval | [string](#string) |  | `OutputOnly` - The frequency at which a subscription is billed. One of day, week, month or year. |
| metadata | [Plan.MetadataEntry](#ddev.billing.v1alpha1.Plan.MetadataEntry) | repeated | `OutputOnly` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. |
| nickname | [string](#string) |  | `OutputOnly` - A brief description of the plan, hidden from customers. |
| product | [string](#string) |  | `OutputOnly` - The Product whose pricing this plan determines. |






<a name="ddev.billing.v1alpha1.Plan.MetadataEntry"></a>

### Plan.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.UpdatePlanRequest"></a>

### UpdatePlanRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` - The name of the plan. |
| active | [bool](#bool) |  | `Optional` - Whether the plan is currently available for new subscriptions. |
| metadata | [UpdatePlanRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdatePlanRequest.MetadataEntry) | repeated | `Optional` - Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. |
| nickname | [string](#string) |  | `Optional` - A brief description of the plan, hidden from customers. |
| product | [string](#string) |  | `Optional` - The product the plan belongs to. Note that after updating, statement descriptors and line items of the plan in active subscriptions will be affected. |






<a name="ddev.billing.v1alpha1.UpdatePlanRequest.MetadataEntry"></a>

### UpdatePlanRequest.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |






<a name="ddev.billing.v1alpha1.UpdatePlanResponse"></a>

### UpdatePlanResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| plan | [Plan](#ddev.billing.v1alpha1.Plan) |  | `OutputOnly` - The updated plan. |





 

 

 

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

