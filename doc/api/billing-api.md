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
  
- [live/billing/v1alpha1/subscriptionitem.proto](#live/billing/v1alpha1/subscriptionitem.proto)
    - [Price](#ddev.billing.v1alpha1.Price)
    - [Price.MetadataEntry](#ddev.billing.v1alpha1.Price.MetadataEntry)
    - [SubscriptionItem](#ddev.billing.v1alpha1.SubscriptionItem)
    - [SubscriptionItem.MetadataEntry](#ddev.billing.v1alpha1.SubscriptionItem.MetadataEntry)
  
    - [PriceType](#ddev.billing.v1alpha1.PriceType)
  
- [live/billing/v1alpha1/workspace.proto](#live/billing/v1alpha1/workspace.proto)
    - [Workspace](#ddev.billing.v1alpha1.Workspace)
  
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
  
    - [State](#ddev.billing.v1alpha1.State)
  
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
  
- [live/billing/v1alpha1/service.proto](#live/billing/v1alpha1/service.proto)
    - [Billing](#ddev.billing.v1alpha1.Billing)
  
- [Scalar Value Types](#scalar-value-types)



<a name="live/billing/v1alpha1/customer.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/customer.proto



<a name="ddev.billing.v1alpha1.Address"></a>

### Address



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| line1 | [string](#string) |  | Address line 1 (e.g., street, PO Box, or company name). `Required` |
| City | [string](#string) |  | City, district, suburb, town, or village. `Optional` |
| country | [string](#string) |  | Two-letter country code (ISO 3166-1 alpha-2). `Optional` |
| line2 | [string](#string) |  | Address line 2 (e.g., apartment, suite, unit, or building). `Optional` |
| postal_code | [string](#string) |  | ZIP or postal code. `Optional` |
| state | [string](#string) |  | State, county, province, or region. `Optional` |






<a name="ddev.billing.v1alpha1.CreateCustomerRequest"></a>

### CreateCustomerRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| address | [Address](#ddev.billing.v1alpha1.Address) |  | The customer’s address. `Optional` |
| description | [string](#string) |  | An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard. `Optional` |
| email | [string](#string) |  | Customer’s email address. It’s displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to 512 characters. `Optional` |
| metadata | [CreateCustomerRequest.MetadataEntry](#ddev.billing.v1alpha1.CreateCustomerRequest.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. `Optional` |
| name | [string](#string) |  | The customer’s full name or business name. `Optional` |
| payment_method | [string](#string) |  | The ID of the PaymentMethod to attach to the customer. `Optional` |
| phone | [string](#string) |  | The customer’s phone number. `Optional` |
| source | [Source](#ddev.billing.v1alpha1.Source) |  | The customer’s payment sources, if any. This is only a reference to existing sources. Will not trigger the creation of a source. `Optional` |






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
| customer | [Customer](#ddev.billing.v1alpha1.Customer) |  | The customer created. `OutputOnly` |






<a name="ddev.billing.v1alpha1.Customer"></a>

### Customer
A customer on ddev-live


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The ID of the customer. `OutputOnly` |
| name | [string](#string) |  | The name of the customer. `OutputOnly` |
| description | [string](#string) |  | A description for this customer. `OutputOnly` |
| email | [string](#string) |  | The primary email address for this customer. `OutputOnly` |
| address | [Address](#ddev.billing.v1alpha1.Address) |  | Address associated with thiis customer. `OutputOnly` |
| metadata | [Customer.MetadataEntry](#ddev.billing.v1alpha1.Customer.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. `OutputOnly` |
| phone | [string](#string) |  | The customer’s phone number. `OutputOnly` |
| defaultSource | [string](#string) |  | The default payment source. `OutputOnly` |






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
| id | [string](#string) |  | The id of the customer to delete. `Required` |






<a name="ddev.billing.v1alpha1.DeleteCustomerResponse"></a>

### DeleteCustomerResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| customer | [Customer](#ddev.billing.v1alpha1.Customer) |  | The deleted customer. `OutputOnly` |






<a name="ddev.billing.v1alpha1.GetCustomerRequest"></a>

### GetCustomerRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The id of the customr to retrieve. `Required` |






<a name="ddev.billing.v1alpha1.GetCustomerResponse"></a>

### GetCustomerResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| customer | [Customer](#ddev.billing.v1alpha1.Customer) |  | The customer with the provided ID. `OutputOnly` |






<a name="ddev.billing.v1alpha1.ListCustomerRequest"></a>

### ListCustomerRequest
Request message for `Billing.ListCustomers`.






<a name="ddev.billing.v1alpha1.ListCustomerResponse"></a>

### ListCustomerResponse
Response message for `Billing.ListCustomers`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| Customers | [Customer](#ddev.billing.v1alpha1.Customer) | repeated | The list of available Customers. - `OutputOnly` |






<a name="ddev.billing.v1alpha1.Source"></a>

### Source



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [string](#string) |  | Unique identifier for the object. `Required` |






<a name="ddev.billing.v1alpha1.UpdateCustomerRequest"></a>

### UpdateCustomerRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The ID of the customer to update |
| address | [Address](#ddev.billing.v1alpha1.Address) |  | The customer’s address. `Optional` |
| description | [string](#string) |  | An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard. `Optional` |
| email | [string](#string) |  | Customer’s email address. It’s displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to 512 characters. `Optional` |
| metadata | [UpdateCustomerRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdateCustomerRequest.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. `Optional` |
| name | [string](#string) |  | The customer’s full name or business name. `Optional` |
| phone | [string](#string) |  | The customer’s phone number. `Optional` |
| defaultSource | [string](#string) |  | The default payment source. `Optional` |






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
| customer | [Customer](#ddev.billing.v1alpha1.Customer) |  | The updated customer. `OutputOnly` |





 

 

 

 



<a name="live/billing/v1alpha1/plan.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/plan.proto



<a name="ddev.billing.v1alpha1.CreatePlanRequest"></a>

### CreatePlanRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| amount | [uint32](#uint32) |  | A positive integer in cents (or 0 for a free plan) representing how much to charge on a recurring basis. `Required for PER_UNIT plans only` |
| currency | [Currency](#ddev.billing.v1alpha1.Currency) |  | The currency for this plan. `Required` |
| interval | [Interval](#ddev.billing.v1alpha1.Interval) |  | The billing period frequency. `Required` |
| product | [string](#string) |  | The product whose pricing the created plan will represent. This can either be the ID of an existing product, or a dictionary containing fields used to create a service product. `Required` |
| name | [string](#string) |  | A unique name for this plan. `Required` |
| active | [bool](#bool) |  | Whether the plan is currently available for new subscriptions. Defaults to true. `Optional` |
| metadata | [CreatePlanRequest.MetadataEntry](#ddev.billing.v1alpha1.CreatePlanRequest.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. `Optional` |
| nickname | [string](#string) |  | A brief description of the plan, hidden from customers. `Optional` |






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
| plan | [Plan](#ddev.billing.v1alpha1.Plan) |  | The plan created. - `OutputOnly` |






<a name="ddev.billing.v1alpha1.DeletePlanRequest"></a>

### DeletePlanRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the plan to delete. `Required` |






<a name="ddev.billing.v1alpha1.DeletePlanResponse"></a>

### DeletePlanResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| plan | [Plan](#ddev.billing.v1alpha1.Plan) |  | The plan deleted. `OutputOnly` |






<a name="ddev.billing.v1alpha1.GetPlanRequest"></a>

### GetPlanRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the plan. `Required` |






<a name="ddev.billing.v1alpha1.GetPlanResponse"></a>

### GetPlanResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| plan | [Plan](#ddev.billing.v1alpha1.Plan) |  | The plan. `OutputOnly` |






<a name="ddev.billing.v1alpha1.ListPlanRequest"></a>

### ListPlanRequest
Request message for `Billing.ListPlans`.






<a name="ddev.billing.v1alpha1.ListPlanResponse"></a>

### ListPlanResponse
Response message for `Billing.ListPlans`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| plans | [Plan](#ddev.billing.v1alpha1.Plan) | repeated | The list of available plans. `OutputOnly` |






<a name="ddev.billing.v1alpha1.Plan"></a>

### Plan



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Whether the plan can be used for new purchases. - `OutputOnly` |
| active | [bool](#bool) |  | Whether the plan can be used for new purchases. - `OutputOnly` |
| amount | [int64](#int64) |  | positive integer or zero. - `OutputOnly` |
| currency | [string](#string) |  | Three-letter ISO currency code, in lowercase. Must be a supported currency. - `OutputOnly` |
| interval | [string](#string) |  | The frequency at which a subscription is billed. One of day, week, month or year. - `OutputOnly` |
| metadata | [Plan.MetadataEntry](#ddev.billing.v1alpha1.Plan.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. - `OutputOnly` |
| nickname | [string](#string) |  | A brief description of the plan, hidden from customers - `OutputOnly` |
| product | [string](#string) |  | The Product whose pricing this plan determines. - `OutputOnly` |






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
| name | [string](#string) |  | The name of the plan. `Required` |
| active | [bool](#bool) |  | Whether the plan is currently available for new subscriptions. `Optional` |
| metadata | [UpdatePlanRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdatePlanRequest.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. `Optional` |
| nickname | [string](#string) |  | A brief description of the plan, hidden from customers. `Optional` |
| product | [string](#string) |  | The product the plan belongs to. Note that after updating, statement descriptors and line items of the plan in active subscriptions will be affected. `Optional` |






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
| plan | [Plan](#ddev.billing.v1alpha1.Plan) |  | The updated plan. `OutputOnly` |





 

 

 

 



<a name="live/billing/v1alpha1/subscriptionitem.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/subscriptionitem.proto



<a name="ddev.billing.v1alpha1.Price"></a>

### Price



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | Unique identifier for the object. |
| active | [bool](#bool) |  | Whether the price can be used for new purchases. `Optional` |
| currency | [Currency](#ddev.billing.v1alpha1.Currency) |  | The ISO Currency. `Optional` |
| metadata | [Price.MetadataEntry](#ddev.billing.v1alpha1.Price.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. `Optional` |
| nickname | [string](#string) |  | A brief description of the plan, hidden from customers. `Optional` |
| product | [string](#string) |  | The ID of the product this price is associated with. `Optional` |
| recurring | [Recurring](#ddev.billing.v1alpha1.Recurring) |  | The recurring components of a price such as interval and usage_type. `Optional` |
| type | [PriceType](#ddev.billing.v1alpha1.PriceType) |  | One of one_time or recurring depending on whether the price is for a one-time purchase or a recurring (subscription) purchase. `Optional` |
| amount | [int64](#int64) |  | The unit amount in cents to be charged, represented as a whole integer if possible. `Optional` |






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
| id | [string](#string) |  | Unique identifier for the object. `OutputOnly` |
| subscription | [string](#string) |  | The subscription this subscription_item belongs to. `Required` |
| metadata | [SubscriptionItem.MetadataEntry](#ddev.billing.v1alpha1.SubscriptionItem.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. `Optional` |
| plan | [string](#string) |  | Hash describing the plan the customer is subscribed to. `Optional` |
| price | [Price](#ddev.billing.v1alpha1.Price) |  | The price the customer is subscribed to. `Optional` |
| quantity | [uint32](#uint32) |  | The quantity of the plan to which the customer should be subscribed. `Optional` |






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


 

 

 



<a name="live/billing/v1alpha1/workspace.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/workspace.proto



<a name="ddev.billing.v1alpha1.Workspace"></a>

### Workspace



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Workspace Name - Required |
| id | [string](#string) |  | Workspace ID - OutputOnly |





 

 

 

 



<a name="live/billing/v1alpha1/common.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/common.proto



<a name="ddev.billing.v1alpha1.Recurring"></a>

### Recurring



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| aggregate_usage | [AgggregateUsage](#ddev.billing.v1alpha1.AgggregateUsage) |  | Specifies a usage aggregation strategy for prices of usage_type=metered. Allowed values are sum for summing up all usage during a period, last_during_period for using the last usage record reported within a period, last_ever for using the last usage record ever (across period bounds) or max which uses the usage record with the maximum reported usage during a period. Defaults to sum. `Optional` |
| interval | [Interval](#ddev.billing.v1alpha1.Interval) |  | The frequency at which a subscription is billed. One of day, week, month or year. `Optional` |
| interval_count | [uint32](#uint32) |  | The number of intervals (specified in the interval attribute) between subscription billings. For example, interval=month and interval_count=3 bills every 3 months. `Optional` |
| usage_type | [UsageType](#ddev.billing.v1alpha1.UsageType) |  | Configures how the quantity per period should be determined. Can be either metered or licensed. licensed automatically bills the quantity set when adding it to a subscription. metered aggregates the total usage based on usage records. Defaults to licensed. `Optional` |





 


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
| id | [string](#string) |  | The id of the subscription to cancel. `Required` |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | The workspace which this subscription belongs. `Required` |
| invoice_now | [bool](#bool) |  | Will generate a final invoice that invoices for any un-invoiced metered usage and new/pending proration invoice items. |
| prorate | [bool](#bool) |  | Will generate a proration invoice item that credits remaining unused time until the subscription period end. |






<a name="ddev.billing.v1alpha1.CancelSubscriptionResponse"></a>

### CancelSubscriptionResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscription | [Subscription](#ddev.billing.v1alpha1.Subscription) |  | The cancelled subscription. `OutputOnly` |






<a name="ddev.billing.v1alpha1.CreateSubscriptionRequest"></a>

### CreateSubscriptionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| CustomerID | [string](#string) |  | The identifier of the customer to subscribe. `Required` |
| items | [SubscriptionItem](#ddev.billing.v1alpha1.SubscriptionItem) | repeated | A list of up to 20 subscription items, each with an attached plan. `Required` |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | The workspace which this subscription belongs. `Required` |
| cancel_at_period_end | [bool](#bool) |  | Boolean indicating whether this subscription should cancel at the end of the current period. `Optional` |
| metadata | [CreateSubscriptionRequest.MetadataEntry](#ddev.billing.v1alpha1.CreateSubscriptionRequest.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. `Optional` |
| trial_end | [int64](#int64) |  | Unix timestamp representing the end of the trial period the customer will get before being charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. If set, trial_end will override the default trial period of the plan the customer is being subscribed to. The special value now can be provided to end the customer’s trial immediately. Can be at most two years from billing_cycle_anchor. `Optional` |
| trial_period_days | [int32](#int32) |  | Integer representing the number of trial period days before the customer is charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. `Optional` |
| default_source | [string](#string) |  | ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If not set, defaults to the customer’s default source. `Optional` |






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
| subscription | [Subscription](#ddev.billing.v1alpha1.Subscription) |  | The subscription created. - `Required` |






<a name="ddev.billing.v1alpha1.DeleteSubscriptionRequest"></a>

### DeleteSubscriptionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the subscription to delete. `Required` |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | The workspace which this subscription belongs. `Required` |






<a name="ddev.billing.v1alpha1.DeleteSubscriptionResponse"></a>

### DeleteSubscriptionResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscription | [Subscription](#ddev.billing.v1alpha1.Subscription) |  | The subscription deleted. `OutputOnly` |






<a name="ddev.billing.v1alpha1.GetSubscriptionRequest"></a>

### GetSubscriptionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the subscription. - `Required` |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | The workspace of the subscription. - `Required` |






<a name="ddev.billing.v1alpha1.GetSubscriptionResponse"></a>

### GetSubscriptionResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscription | [Subscription](#ddev.billing.v1alpha1.Subscription) |  | The subscription matching this name - `OutputOnly` |






<a name="ddev.billing.v1alpha1.ListSubscriptionRequest"></a>

### ListSubscriptionRequest
Request message for `Billing.ListSubscriptions`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | The workspace under which to list all subscriptions - `Required` |






<a name="ddev.billing.v1alpha1.ListSubscriptionResponse"></a>

### ListSubscriptionResponse
Response message for `Billing.ListSubscriptions`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscriptions | [Subscription](#ddev.billing.v1alpha1.Subscription) | repeated | The subscriptions belonging to the customer account. - `OutputOnly` |






<a name="ddev.billing.v1alpha1.Subscription"></a>

### Subscription



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | Name of the subscription. `OutputOnly` |
| id | [string](#string) |  | ID of the subscription. `OutputOnly` |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | The workspace the subscription belongs to. `OutputOnly` |
| CurrentPeriodStart | [int64](#int64) |  | The UNIX timestamp for the billing period start. `OutputOnly` |
| CurrentPeriodEnd | [int64](#int64) |  | The UNIX timestamp for the billing period end. `OutputOnly` |
| Active | [bool](#bool) |  | If the subscription is currently active. `OutputOnly` |
| items | [SubscriptionItem](#ddev.billing.v1alpha1.SubscriptionItem) | repeated | The subscription items this subscription shall contain. `OutputOnly` |
| state | [State](#ddev.billing.v1alpha1.State) |  | Indicators about the state of the subscription internally to the platform. `OutputOnly` |






<a name="ddev.billing.v1alpha1.UpdateSubscriptionRequest"></a>

### UpdateSubscriptionRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | The id of the subscription. `Required` |
| workspace | [Workspace](#ddev.billing.v1alpha1.Workspace) |  | The workspace which this subscription belongs. `Required` |
| cancel_at_period_end | [bool](#bool) |  | Boolean indicating whether this subscription should cancel at the end of the current period. `Optional` |
| default_payment_method | [string](#string) |  | ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. If not set, invoices will use the default payment method in the customer’s invoice settings. `Optional` |
| items | [SubscriptionItem](#ddev.billing.v1alpha1.SubscriptionItem) | repeated | List of subscription items, each with an attached plan. `Optional` |
| metadata | [UpdateSubscriptionRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdateSubscriptionRequest.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. `Optional` |






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
| subscription | [Subscription](#ddev.billing.v1alpha1.Subscription) |  | The subscription updated. `OutputOnly` |





 


<a name="ddev.billing.v1alpha1.State"></a>

### State


| Name | Number | Description |
| ---- | ------ | ----------- |
| READY | 0 |  |
| NOTREADY | 1 |  |
| UNKOWN | 2 |  |


 

 

 



<a name="live/billing/v1alpha1/product.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/product.proto



<a name="ddev.billing.v1alpha1.CreateProductRequest"></a>

### CreateProductRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The product’s name, meant to be displayable to the customer. Whenever this product is sold via a subscription, name will show up on associated invoice line item descriptions. `Required` |
| active | [bool](#bool) |  | Whether the product is currently available for purchase. Defaults to true. |
| description | [string](#string) |  | The product’s description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes. `Optional` |
| metadata | [CreateProductRequest.MetadataEntry](#ddev.billing.v1alpha1.CreateProductRequest.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. `Optional` |






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
| product | [Product](#ddev.billing.v1alpha1.Product) |  | The product created. - `OutputOnly` |






<a name="ddev.billing.v1alpha1.DeleteProductRequest"></a>

### DeleteProductRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the product to delete. - `Required` |






<a name="ddev.billing.v1alpha1.DeleteProductResponse"></a>

### DeleteProductResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| product | [Product](#ddev.billing.v1alpha1.Product) |  | The product deleted. - `OutputOnly` |






<a name="ddev.billing.v1alpha1.GetProductRequest"></a>

### GetProductRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the product. - `Required` |






<a name="ddev.billing.v1alpha1.GetProductResponse"></a>

### GetProductResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| product | [Product](#ddev.billing.v1alpha1.Product) |  | The product. - `OutputOnly` |






<a name="ddev.billing.v1alpha1.ListProductRequest"></a>

### ListProductRequest
Request message for `Billing.ListProducts`.






<a name="ddev.billing.v1alpha1.ListProductResponse"></a>

### ListProductResponse
Response message for `Billing.ListProducts`.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| products | [Product](#ddev.billing.v1alpha1.Product) | repeated | The list of available products. - `OutputOnly` |






<a name="ddev.billing.v1alpha1.Product"></a>

### Product



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | An identifier will be randomly generated by Stripe. You can optionally override this ID, but the ID must be unique across all products in your Stripe account. - `OutputOnly` |
| name | [string](#string) |  | The product’s name, meant to be displayable to the customer. Whenever this product is sold via a subscription, name will show up on associated invoice line item descriptions. - `OutputOnly` |
| active | [bool](#bool) |  | Whether the product is currently available for purchase. Defaults to true. = `OutputOnly` |
| description | [string](#string) |  | The product’s description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes. - `OutputOnly` |
| metadata | [Product.MetadataEntry](#ddev.billing.v1alpha1.Product.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. - `OutputOnly` |






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
| id | [string](#string) |  | The name of the product. - `Required` |
| active | [bool](#bool) |  | Whether the product is currently available for purchase. Defaults to true. `Optional` |
| description | [string](#string) |  | The product’s description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes. `Optional` |
| metadata | [UpdateProductRequest.MetadataEntry](#ddev.billing.v1alpha1.UpdateProductRequest.MetadataEntry) | repeated | Set of key-value pairs that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to metadata. `Optional` |
| name | [string](#string) |  | The product’s name, meant to be displayable to the customer. Whenever this product is sold via a subscription, name will show up on associated invoice line item descriptions. `Optional` |






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
| product | [Product](#ddev.billing.v1alpha1.Product) |  | The updated product. - `OutputOnly` |





 

 

 

 



<a name="live/billing/v1alpha1/service.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/billing/v1alpha1/service.proto


 

 

 


<a name="ddev.billing.v1alpha1.Billing"></a>

### Billing


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateCustomer | [CreateCustomerRequest](#ddev.billing.v1alpha1.CreateCustomerRequest) | [CreateCustomerResponse](#ddev.billing.v1alpha1.CreateCustomerResponse) |  |
| GetCustomer | [GetCustomerRequest](#ddev.billing.v1alpha1.GetCustomerRequest) | [GetCustomerResponse](#ddev.billing.v1alpha1.GetCustomerResponse) |  |
| ListCustomers | [ListCustomerRequest](#ddev.billing.v1alpha1.ListCustomerRequest) | [ListCustomerResponse](#ddev.billing.v1alpha1.ListCustomerResponse) |  |
| UpdateCustomer | [UpdateCustomerRequest](#ddev.billing.v1alpha1.UpdateCustomerRequest) | [UpdateCustomerResponse](#ddev.billing.v1alpha1.UpdateCustomerResponse) |  |
| CreateSubscription | [CreateSubscriptionRequest](#ddev.billing.v1alpha1.CreateSubscriptionRequest) | [CreateSubscriptionResponse](#ddev.billing.v1alpha1.CreateSubscriptionResponse) |  |
| GetSubscription | [GetSubscriptionRequest](#ddev.billing.v1alpha1.GetSubscriptionRequest) | [GetSubscriptionResponse](#ddev.billing.v1alpha1.GetSubscriptionResponse) |  |
| ListSubscriptions | [ListSubscriptionRequest](#ddev.billing.v1alpha1.ListSubscriptionRequest) | [ListSubscriptionResponse](#ddev.billing.v1alpha1.ListSubscriptionResponse) |  |
| UpdateSubscription | [UpdateSubscriptionRequest](#ddev.billing.v1alpha1.UpdateSubscriptionRequest) | [UpdateSubscriptionResponse](#ddev.billing.v1alpha1.UpdateSubscriptionResponse) |  |
| CancelSubscription | [CancelSubscriptionRequest](#ddev.billing.v1alpha1.CancelSubscriptionRequest) | [CancelSubscriptionResponse](#ddev.billing.v1alpha1.CancelSubscriptionResponse) | Deprecated. Cancel a subscription in stripe |
| DeleteSubscription | [DeleteSubscriptionRequest](#ddev.billing.v1alpha1.DeleteSubscriptionRequest) | [DeleteSubscriptionResponse](#ddev.billing.v1alpha1.DeleteSubscriptionResponse) |  |
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

