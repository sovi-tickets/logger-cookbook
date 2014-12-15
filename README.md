Logger Server Cookbook
----------------------

This Cookbook is a wrapper cookbook around `logstash`, `kibana` and `elasticsearch` cookbooks.

We at Gogobot use this cookbook as the centralized logging server for our rails based application servers.

This cookbook is intended to be forked and used and not to be a cookbook you wrap and your own, so please feel free to fork it, make changes and use it to set up your own logging server.

In order to understand better what/why/how it's done, read the blog post about it here: INSERT_BLOG_POST

## Prerequisites

This Cookbook was only tested on AWS, if you intend to use it elsewhere it will likely need some adjustments and modifications.

This cookbook assumes:

1. You are working with a chef server or have data bags support
2. You want a bigger than 1TB disk for your instance in some sort of raid level with some piops.

If you want to work with the cookbook AS-IS without making any changes, you will need some data-bags set up.
The cookbook gets some data like credentials from data-bags.

### aws:main databag

```javascript
{
  "name": "data_bag_item_aws_main",
  "json_class": "Chef::DataBagItem",
  "chef_type": "data_bag_item",
  "data_bag": "aws",
  "raw_data": {
    "id": "main",
    "aws_access_key_id": "YOUR_AWS_KEY_ID",
    "aws_secret_access_key": "YOUR_AWS_SECRET_KEY"
  }
}
```

### kibana::credentials databag

```javascript
{
  "name": "data_bag_item_kibana_credentials",
  "json_class": "Chef::DataBagItem",
  "chef_type": "data_bag_item",
  "data_bag": "kibana",
  "raw_data": {
    "id": "credentials",
    "user": "YOUR_KIBANA_WEB_USERNAME",
    "password": "YOUR_KIBANA_WEB_PASSWORD"
  }
}
```


### What you need/want to change

You will want to change the template files, making the input type and port work
for you, the default is tcp but we have since moved to udp so I would go ahead
and change those files.

### Customizing the cookbook

Everything in this cookbook is driven by the attributes, whether it's the version of logstash/kibana/elasticsearch or anything else you would want to change (except templates).

For example, if you want to change the disk size/raid levels etc:

```ruby
default['logger']['disk_count']  = 5
default['logger']['disk_size']   = 1025
default['logger']['raid_level']  = 10
default['logger']['disk_piops']  = 3000
default['logger']['mount_point'] = '/mnt'
```


## Licence:

Check the LICENSE file for more information, long story short, it's MIT :)

## Contribute/Ask questions

Please feel free to ask anything in the issues, I'd love to help with whatever
I can.

Also, if you have anything to contribute, feel free to fork this repository and
open a pull request with your change.