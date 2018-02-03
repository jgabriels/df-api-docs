=begin comment

Direct Freight API

In order to use the Direct Freight API please first contact us to get an API Token. This token needs to be sent as a HTTP header argument in every request to our API.  api-token=\"SECRET KEY\"  Please keep your api-token a secret. If the token is compromised please contact us to get a new one.  This api token authenticates your application and gives it access to the API.  The API token should not be confused with the end-user-token. That token is given to you via the end_user_authentications endpoint when the user logs in. This token is needed in order to use certain features, and get certain sensitive information.  Both Tokens are stateless, and delivered via the HTTP headers.

OpenAPI spec version: 2.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end comment

=cut

#
# NOTE: This class is auto generated by the swagger code generator program. 
# Do not edit the class manually.
# Ref: https://github.com/swagger-api/swagger-codegen
#
package WWW::SwaggerClient::PostingsApi;

require 5.6.0;
use strict;
use warnings;
use utf8; 
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::SwaggerClient::ApiClient;
use WWW::SwaggerClient::Configuration;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class   = shift;
    my (%self) = (
        'api_client' => WWW::SwaggerClient::ApiClient->instance,
        @_
    );

    #my $self = {
    #    #api_client => $options->{api_client}
    #    api_client => $default_api_client
    #}; 

    bless \%self, $class;

}


#
# postings_custom_categories_category_type_delete
#
# Delete some or all custom columns, or custom_column data.
# 
# @param string $category_type Valid types are \&quot;names\&quot;, and \&quot;data\&quot;. (required)
# @param string $end_user_token The logged in account&#39;s token. (required)
# @param ARRAY[string] $category_id To just delete information about some postings. (optional)
{
    my $params = {
    'category_type' => {
        data_type => 'string',
        description => 'Valid types are \&quot;names\&quot;, and \&quot;data\&quot;.',
        required => '1',
    },
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in account&#39;s token.',
        required => '1',
    },
    'category_id' => {
        data_type => 'ARRAY[string]',
        description => 'To just delete information about some postings.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'postings_custom_categories_category_type_delete' } = { 
    	summary => 'Delete some or all custom columns, or custom_column data.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub postings_custom_categories_category_type_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'category_type' is set
    unless (exists $args{'category_type'}) {
      croak("Missing the required parameter 'category_type' when calling postings_custom_categories_category_type_delete");
    }

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling postings_custom_categories_category_type_delete");
    }

    # parse inputs
    my $_resource_path = '/postings/custom_categories/{category_type}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'category_id'}) {
        $query_params->{'category_id'} = $self->{api_client}->to_query_value($args{'category_id'});
    }

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    # path params
    if ( exists $args{'category_type'}) {
        my $_base_variable = "{" . "category_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'category_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# postings_custom_categories_category_type_get
#
# Get a list of custom columns, or custom_column data.
# 
# @param string $end_user_token The logged in account&#39;s token. (required)
# @param string $category_type Valid types are \&quot;names\&quot;, and \&quot;data\&quot;. (required)
# @param ARRAY[string] $category_id To just return information about some postings. (optional)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in account&#39;s token.',
        required => '1',
    },
    'category_type' => {
        data_type => 'string',
        description => 'Valid types are \&quot;names\&quot;, and \&quot;data\&quot;.',
        required => '1',
    },
    'category_id' => {
        data_type => 'ARRAY[string]',
        description => 'To just return information about some postings.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'postings_custom_categories_category_type_get' } = { 
    	summary => 'Get a list of custom columns, or custom_column data.',
        params => $params,
        returns => 'GetCustomCategoriesResponse',
        };
}
# @return GetCustomCategoriesResponse
#
sub postings_custom_categories_category_type_get {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling postings_custom_categories_category_type_get");
    }

    # verify the required parameter 'category_type' is set
    unless (exists $args{'category_type'}) {
      croak("Missing the required parameter 'category_type' when calling postings_custom_categories_category_type_get");
    }

    # parse inputs
    my $_resource_path = '/postings/custom_categories/{category_type}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'category_id'}) {
        $query_params->{'category_id'} = $self->{api_client}->to_query_value($args{'category_id'});
    }

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    # path params
    if ( exists $args{'category_type'}) {
        my $_base_variable = "{" . "category_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'category_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GetCustomCategoriesResponse', $response);
    return $_response_object;
}

#
# postings_custom_categories_category_type_patch
#
# Update a category name, or value.
# 
# @param string $category_type Valid types are \&quot;names\&quot;, and \&quot;data\&quot;. (required)
# @param string $end_user_token The logged in account&#39;s token. (required)
# @param UpdateCcInfo $body  (required)
{
    my $params = {
    'category_type' => {
        data_type => 'string',
        description => 'Valid types are \&quot;names\&quot;, and \&quot;data\&quot;.',
        required => '1',
    },
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in account&#39;s token.',
        required => '1',
    },
    'body' => {
        data_type => 'UpdateCcInfo',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'postings_custom_categories_category_type_patch' } = { 
    	summary => 'Update a category name, or value.',
        params => $params,
        returns => 'PostCustomCategoriesResponse',
        };
}
# @return PostCustomCategoriesResponse
#
sub postings_custom_categories_category_type_patch {
    my ($self, %args) = @_;

    # verify the required parameter 'category_type' is set
    unless (exists $args{'category_type'}) {
      croak("Missing the required parameter 'category_type' when calling postings_custom_categories_category_type_patch");
    }

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling postings_custom_categories_category_type_patch");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling postings_custom_categories_category_type_patch");
    }

    # parse inputs
    my $_resource_path = '/postings/custom_categories/{category_type}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    # path params
    if ( exists $args{'category_type'}) {
        my $_base_variable = "{" . "category_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'category_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PostCustomCategoriesResponse', $response);
    return $_response_object;
}

#
# postings_custom_categories_category_type_post
#
# Create new category names, or add new data.
# 
# @param string $category_type Valid types are \&quot;names\&quot;, and \&quot;data\&quot;. (required)
# @param string $end_user_token The logged in account&#39;s token. (required)
# @param CreateCcInfo $body  (required)
{
    my $params = {
    'category_type' => {
        data_type => 'string',
        description => 'Valid types are \&quot;names\&quot;, and \&quot;data\&quot;.',
        required => '1',
    },
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in account&#39;s token.',
        required => '1',
    },
    'body' => {
        data_type => 'CreateCcInfo',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'postings_custom_categories_category_type_post' } = { 
    	summary => 'Create new category names, or add new data.',
        params => $params,
        returns => 'PostCustomCategoriesResponse',
        };
}
# @return PostCustomCategoriesResponse
#
sub postings_custom_categories_category_type_post {
    my ($self, %args) = @_;

    # verify the required parameter 'category_type' is set
    unless (exists $args{'category_type'}) {
      croak("Missing the required parameter 'category_type' when calling postings_custom_categories_category_type_post");
    }

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling postings_custom_categories_category_type_post");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling postings_custom_categories_category_type_post");
    }

    # parse inputs
    my $_resource_path = '/postings/custom_categories/{category_type}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    # path params
    if ( exists $args{'category_type'}) {
        my $_base_variable = "{" . "category_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'category_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PostCustomCategoriesResponse', $response);
    return $_response_object;
}

#
# postings_multiple_posting_type_post
#
# Create, multiple entries at once. This is a convenience method.
# 
# @param string $posting_type Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot; (required)
# @param string $end_user_token The logged in account&#39;s token. (required)
# @param CreateMultiplePostings $body  (required)
{
    my $params = {
    'posting_type' => {
        data_type => 'string',
        description => 'Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot;',
        required => '1',
    },
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in account&#39;s token.',
        required => '1',
    },
    'body' => {
        data_type => 'CreateMultiplePostings',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'postings_multiple_posting_type_post' } = { 
    	summary => 'Create, multiple entries at once. This is a convenience method.',
        params => $params,
        returns => 'PostPostingMultipleResponse',
        };
}
# @return PostPostingMultipleResponse
#
sub postings_multiple_posting_type_post {
    my ($self, %args) = @_;

    # verify the required parameter 'posting_type' is set
    unless (exists $args{'posting_type'}) {
      croak("Missing the required parameter 'posting_type' when calling postings_multiple_posting_type_post");
    }

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling postings_multiple_posting_type_post");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling postings_multiple_posting_type_post");
    }

    # parse inputs
    my $_resource_path = '/postings/multiple/{posting_type}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    # path params
    if ( exists $args{'posting_type'}) {
        my $_base_variable = "{" . "posting_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'posting_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PostPostingMultipleResponse', $response);
    return $_response_object;
}

#
# postings_posting_type_action_post
#
# Copy or Move an posting.
# 
# @param string $end_user_token The logged in account&#39;s token (required)
# @param string $posting_type Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot; (required)
# @param string $action Specified in the url. Valid types are \&quot;copy\&quot;, and \&quot;move\&quot; (required)
# @param PostPostingTypeActionBody $body  (required)
{
    my $params = {
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in account&#39;s token',
        required => '1',
    },
    'posting_type' => {
        data_type => 'string',
        description => 'Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot;',
        required => '1',
    },
    'action' => {
        data_type => 'string',
        description => 'Specified in the url. Valid types are \&quot;copy\&quot;, and \&quot;move\&quot;',
        required => '1',
    },
    'body' => {
        data_type => 'PostPostingTypeActionBody',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'postings_posting_type_action_post' } = { 
    	summary => 'Copy or Move an posting.',
        params => $params,
        returns => 'PostPostingTypeActionResponse',
        };
}
# @return PostPostingTypeActionResponse
#
sub postings_posting_type_action_post {
    my ($self, %args) = @_;

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling postings_posting_type_action_post");
    }

    # verify the required parameter 'posting_type' is set
    unless (exists $args{'posting_type'}) {
      croak("Missing the required parameter 'posting_type' when calling postings_posting_type_action_post");
    }

    # verify the required parameter 'action' is set
    unless (exists $args{'action'}) {
      croak("Missing the required parameter 'action' when calling postings_posting_type_action_post");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling postings_posting_type_action_post");
    }

    # parse inputs
    my $_resource_path = '/postings/{posting_type}/{action}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    # path params
    if ( exists $args{'posting_type'}) {
        my $_base_variable = "{" . "posting_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'posting_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    # path params
    if ( exists $args{'action'}) {
        my $_base_variable = "{" . "action" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'action'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('PostPostingTypeActionResponse', $response);
    return $_response_object;
}

#
# postings_posting_type_delete
#
# Remove one or more postings.
# 
# @param string $posting_type Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot; (required)
# @param string $end_user_token The logged in account&#39;s token. (required)
# @param ARRAY[string] $posting_id You must specify which entry to remove. (required)
{
    my $params = {
    'posting_type' => {
        data_type => 'string',
        description => 'Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot;',
        required => '1',
    },
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in account&#39;s token.',
        required => '1',
    },
    'posting_id' => {
        data_type => 'ARRAY[string]',
        description => 'You must specify which entry to remove.',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'postings_posting_type_delete' } = { 
    	summary => 'Remove one or more postings.',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub postings_posting_type_delete {
    my ($self, %args) = @_;

    # verify the required parameter 'posting_type' is set
    unless (exists $args{'posting_type'}) {
      croak("Missing the required parameter 'posting_type' when calling postings_posting_type_delete");
    }

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling postings_posting_type_delete");
    }

    # verify the required parameter 'posting_id' is set
    unless (exists $args{'posting_id'}) {
      croak("Missing the required parameter 'posting_id' when calling postings_posting_type_delete");
    }

    # parse inputs
    my $_resource_path = '/postings/{posting_type}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'posting_id'}) {
        $query_params->{'posting_id'} = $self->{api_client}->to_query_value($args{'posting_id'});
    }

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    # path params
    if ( exists $args{'posting_type'}) {
        my $_base_variable = "{" . "posting_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'posting_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# postings_posting_type_get
#
# Get posts by this user.
# 
# @param string $posting_type Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot; (required)
# @param string $end_user_token The logged in account&#39;s token. (required)
# @param ARRAY[string] $posting_id To just return information about some postings. (optional)
{
    my $params = {
    'posting_type' => {
        data_type => 'string',
        description => 'Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot;',
        required => '1',
    },
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in account&#39;s token.',
        required => '1',
    },
    'posting_id' => {
        data_type => 'ARRAY[string]',
        description => 'To just return information about some postings.',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'postings_posting_type_get' } = { 
    	summary => 'Get posts by this user.',
        params => $params,
        returns => 'GetPostingTypeResponse',
        };
}
# @return GetPostingTypeResponse
#
sub postings_posting_type_get {
    my ($self, %args) = @_;

    # verify the required parameter 'posting_type' is set
    unless (exists $args{'posting_type'}) {
      croak("Missing the required parameter 'posting_type' when calling postings_posting_type_get");
    }

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling postings_posting_type_get");
    }

    # parse inputs
    my $_resource_path = '/postings/{posting_type}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # query params
    if ( exists $args{'posting_id'}) {
        $query_params->{'posting_id'} = $self->{api_client}->to_query_value($args{'posting_id'});
    }

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    # path params
    if ( exists $args{'posting_type'}) {
        my $_base_variable = "{" . "posting_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'posting_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GetPostingTypeResponse', $response);
    return $_response_object;
}

#
# postings_posting_type_patch
#
# Update an posting.
# 
# @param string $posting_type Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot; (required)
# @param string $end_user_token The logged in account&#39;s token. (required)
# @param PostObjectModel $body  (optional)
{
    my $params = {
    'posting_type' => {
        data_type => 'string',
        description => 'Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot;',
        required => '1',
    },
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in account&#39;s token.',
        required => '1',
    },
    'body' => {
        data_type => 'PostObjectModel',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'postings_posting_type_patch' } = { 
    	summary => 'Update an posting.',
        params => $params,
        returns => 'GetPostingTypeResponse',
        };
}
# @return GetPostingTypeResponse
#
sub postings_posting_type_patch {
    my ($self, %args) = @_;

    # verify the required parameter 'posting_type' is set
    unless (exists $args{'posting_type'}) {
      croak("Missing the required parameter 'posting_type' when calling postings_posting_type_patch");
    }

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling postings_posting_type_patch");
    }

    # parse inputs
    my $_resource_path = '/postings/{posting_type}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'PATCH';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    # path params
    if ( exists $args{'posting_type'}) {
        my $_base_variable = "{" . "posting_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'posting_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('GetPostingTypeResponse', $response);
    return $_response_object;
}

#
# postings_posting_type_post
#
# Copy or Move an posting.
# 
# @param string $posting_type Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot; (required)
# @param string $end_user_token The logged in account&#39;s token. (required)
# @param PostObjectModel $body  (required)
{
    my $params = {
    'posting_type' => {
        data_type => 'string',
        description => 'Valid types are \&quot;loads\&quot;, \&quot;trucks\&quot;, \&quot;private_loads\&quot;, \&quot;private_trucks\&quot;, \&quot;test_loads\&quot;, and \&quot;test_trucks\&quot;',
        required => '1',
    },
    'end_user_token' => {
        data_type => 'string',
        description => 'The logged in account&#39;s token.',
        required => '1',
    },
    'body' => {
        data_type => 'PostObjectModel',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'postings_posting_type_post' } = { 
    	summary => 'Copy or Move an posting.',
        params => $params,
        returns => 'object',
        };
}
# @return object
#
sub postings_posting_type_post {
    my ($self, %args) = @_;

    # verify the required parameter 'posting_type' is set
    unless (exists $args{'posting_type'}) {
      croak("Missing the required parameter 'posting_type' when calling postings_posting_type_post");
    }

    # verify the required parameter 'end_user_token' is set
    unless (exists $args{'end_user_token'}) {
      croak("Missing the required parameter 'end_user_token' when calling postings_posting_type_post");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling postings_posting_type_post");
    }

    # parse inputs
    my $_resource_path = '/postings/{posting_type}';
    $_resource_path =~ s/{format}/json/; # default format to json

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # header params
    if ( exists $args{'end_user_token'}) {
        $header_params->{'end-user-token'} = $self->{api_client}->to_header_value($args{'end_user_token'});
    }

    # path params
    if ( exists $args{'posting_type'}) {
        my $_base_variable = "{" . "posting_type" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'posting_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(api_key )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('object', $response);
    return $_response_object;
}

1;