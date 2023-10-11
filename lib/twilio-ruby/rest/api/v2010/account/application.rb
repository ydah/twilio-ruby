##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Api
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Api < ApiBase
            class V2010 < Version
                class AccountContext < InstanceContext

                     class ApplicationList < ListResource
                    ##
                    # Initialize the ApplicationList
                    # @param [Version] version Version that contains the resource
                    # @return [ApplicationList] ApplicationList
                    def initialize(version, account_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { account_sid: account_sid }
                        @uri = "/Accounts/#{@solution[:account_sid]}/Applications.json"
                        
                    end
                    ##
                    # Create the ApplicationInstance
                    # @param [String] api_version The API version to use to start a new TwiML session. Can be: `2010-04-01` or `2008-08-01`. The default value is the account's default API version.
                    # @param [String] voice_url The URL we should call when the phone number assigned to this application receives a call.
                    # @param [String] voice_method The HTTP method we should use to call `voice_url`. Can be: `GET` or `POST`.
                    # @param [String] voice_fallback_url The URL that we should call when an error occurs retrieving or executing the TwiML requested by `url`.
                    # @param [String] voice_fallback_method The HTTP method we should use to call `voice_fallback_url`. Can be: `GET` or `POST`.
                    # @param [String] status_callback The URL we should call using the `status_callback_method` to send status information to your application.
                    # @param [String] status_callback_method The HTTP method we should use to call `status_callback`. Can be: `GET` or `POST`.
                    # @param [Boolean] voice_caller_id_lookup Whether we should look up the caller's caller-ID name from the CNAM database (additional charges apply). Can be: `true` or `false`.
                    # @param [String] sms_url The URL we should call when the phone number receives an incoming SMS message.
                    # @param [String] sms_method The HTTP method we should use to call `sms_url`. Can be: `GET` or `POST`.
                    # @param [String] sms_fallback_url The URL that we should call when an error occurs while retrieving or executing the TwiML from `sms_url`.
                    # @param [String] sms_fallback_method The HTTP method we should use to call `sms_fallback_url`. Can be: `GET` or `POST`.
                    # @param [String] sms_status_callback The URL we should call using a POST method to send status information about SMS messages sent by the application.
                    # @param [String] message_status_callback The URL we should call using a POST method to send message status information to your application.
                    # @param [String] friendly_name A descriptive string that you create to describe the new application. It can be up to 64 characters long.
                    # @param [Boolean] public_application_connect_enabled Whether to allow other Twilio accounts to dial this application using Dial verb. Can be: `true` or `false`.
                    # @return [ApplicationInstance] Created ApplicationInstance
                    def create(
                        api_version: :unset, 
                        voice_url: :unset, 
                        voice_method: :unset, 
                        voice_fallback_url: :unset, 
                        voice_fallback_method: :unset, 
                        status_callback: :unset, 
                        status_callback_method: :unset, 
                        voice_caller_id_lookup: :unset, 
                        sms_url: :unset, 
                        sms_method: :unset, 
                        sms_fallback_url: :unset, 
                        sms_fallback_method: :unset, 
                        sms_status_callback: :unset, 
                        message_status_callback: :unset, 
                        friendly_name: :unset, 
                        public_application_connect_enabled: :unset
                    )

                        data = Twilio::Values.of({
                            'ApiVersion' => api_version,
                            'VoiceUrl' => voice_url,
                            'VoiceMethod' => voice_method,
                            'VoiceFallbackUrl' => voice_fallback_url,
                            'VoiceFallbackMethod' => voice_fallback_method,
                            'StatusCallback' => status_callback,
                            'StatusCallbackMethod' => status_callback_method,
                            'VoiceCallerIdLookup' => voice_caller_id_lookup,
                            'SmsUrl' => sms_url,
                            'SmsMethod' => sms_method,
                            'SmsFallbackUrl' => sms_fallback_url,
                            'SmsFallbackMethod' => sms_fallback_method,
                            'SmsStatusCallback' => sms_status_callback,
                            'MessageStatusCallback' => message_status_callback,
                            'FriendlyName' => friendly_name,
                            'PublicApplicationConnectEnabled' => public_application_connect_enabled,
                        })

                        payload = @version.create('POST', @uri, data: data)
                        ApplicationInstance.new(
                            @version,
                            payload,
                            account_sid: @solution[:account_sid],
                        )
                    end

                
                    ##
                    # Lists ApplicationInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [String] friendly_name The string that identifies the Application resources to read.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(friendly_name: :unset, limit: nil, page_size: nil)
                        self.stream(
                            friendly_name: friendly_name,
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [String] friendly_name The string that identifies the Application resources to read.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(friendly_name: :unset, limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            friendly_name: friendly_name,
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields ApplicationInstance records from the API.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    def each
                        limits = @version.read_limits

                        page = self.page(page_size: limits[:page_size], )

                        @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
                    end

                    ##
                    # Retrieve a single page of ApplicationInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] friendly_name The string that identifies the Application resources to read.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of ApplicationInstance
                    def page(friendly_name: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'FriendlyName' => friendly_name,
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        ApplicationPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of ApplicationInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of ApplicationInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    ApplicationPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Api.V2010.ApplicationList>'
                    end
                end


                class ApplicationContext < InstanceContext
                    ##
                    # Initialize the ApplicationContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] account_sid The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Application resources to update.
                    # @param [String] sid The Twilio-provided string that uniquely identifies the Application resource to update.
                    # @return [ApplicationContext] ApplicationContext
                    def initialize(version, account_sid, sid)
                        super(version)

                        # Path Solution
                        @solution = { account_sid: account_sid, sid: sid,  }
                        @uri = "/Accounts/#{@solution[:account_sid]}/Applications/#{@solution[:sid]}.json"

                        
                    end
                    ##
                    # Delete the ApplicationInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        @version.delete('DELETE', @uri)
                    end

                    ##
                    # Fetch the ApplicationInstance
                    # @return [ApplicationInstance] Fetched ApplicationInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        ApplicationInstance.new(
                            @version,
                            payload,
                            account_sid: @solution[:account_sid],
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Update the ApplicationInstance
                    # @param [String] friendly_name A descriptive string that you create to describe the resource. It can be up to 64 characters long.
                    # @param [String] api_version The API version to use to start a new TwiML session. Can be: `2010-04-01` or `2008-08-01`. The default value is your account's default API version.
                    # @param [String] voice_url The URL we should call when the phone number assigned to this application receives a call.
                    # @param [String] voice_method The HTTP method we should use to call `voice_url`. Can be: `GET` or `POST`.
                    # @param [String] voice_fallback_url The URL that we should call when an error occurs retrieving or executing the TwiML requested by `url`.
                    # @param [String] voice_fallback_method The HTTP method we should use to call `voice_fallback_url`. Can be: `GET` or `POST`.
                    # @param [String] status_callback The URL we should call using the `status_callback_method` to send status information to your application.
                    # @param [String] status_callback_method The HTTP method we should use to call `status_callback`. Can be: `GET` or `POST`.
                    # @param [Boolean] voice_caller_id_lookup Whether we should look up the caller's caller-ID name from the CNAM database (additional charges apply). Can be: `true` or `false`.
                    # @param [String] sms_url The URL we should call when the phone number receives an incoming SMS message.
                    # @param [String] sms_method The HTTP method we should use to call `sms_url`. Can be: `GET` or `POST`.
                    # @param [String] sms_fallback_url The URL that we should call when an error occurs while retrieving or executing the TwiML from `sms_url`.
                    # @param [String] sms_fallback_method The HTTP method we should use to call `sms_fallback_url`. Can be: `GET` or `POST`.
                    # @param [String] sms_status_callback Same as message_status_callback: The URL we should call using a POST method to send status information about SMS messages sent by the application. Deprecated, included for backwards compatibility.
                    # @param [String] message_status_callback The URL we should call using a POST method to send message status information to your application.
                    # @param [Boolean] public_application_connect_enabled Whether to allow other Twilio accounts to dial this application using Dial verb. Can be: `true` or `false`.
                    # @return [ApplicationInstance] Updated ApplicationInstance
                    def update(
                        friendly_name: :unset, 
                        api_version: :unset, 
                        voice_url: :unset, 
                        voice_method: :unset, 
                        voice_fallback_url: :unset, 
                        voice_fallback_method: :unset, 
                        status_callback: :unset, 
                        status_callback_method: :unset, 
                        voice_caller_id_lookup: :unset, 
                        sms_url: :unset, 
                        sms_method: :unset, 
                        sms_fallback_url: :unset, 
                        sms_fallback_method: :unset, 
                        sms_status_callback: :unset, 
                        message_status_callback: :unset, 
                        public_application_connect_enabled: :unset
                    )

                        data = Twilio::Values.of({
                            'FriendlyName' => friendly_name,
                            'ApiVersion' => api_version,
                            'VoiceUrl' => voice_url,
                            'VoiceMethod' => voice_method,
                            'VoiceFallbackUrl' => voice_fallback_url,
                            'VoiceFallbackMethod' => voice_fallback_method,
                            'StatusCallback' => status_callback,
                            'StatusCallbackMethod' => status_callback_method,
                            'VoiceCallerIdLookup' => voice_caller_id_lookup,
                            'SmsUrl' => sms_url,
                            'SmsMethod' => sms_method,
                            'SmsFallbackUrl' => sms_fallback_url,
                            'SmsFallbackMethod' => sms_fallback_method,
                            'SmsStatusCallback' => sms_status_callback,
                            'MessageStatusCallback' => message_status_callback,
                            'PublicApplicationConnectEnabled' => public_application_connect_enabled,
                        })

                        payload = @version.update('POST', @uri, data: data)
                        ApplicationInstance.new(
                            @version,
                            payload,
                            account_sid: @solution[:account_sid],
                            sid: @solution[:sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Api.V2010.ApplicationContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Api.V2010.ApplicationContext #{context}>"
                    end
                end

                class ApplicationPage < Page
                    ##
                    # Initialize the ApplicationPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [ApplicationPage] ApplicationPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of ApplicationInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [ApplicationInstance] ApplicationInstance
                    def get_instance(payload)
                        ApplicationInstance.new(@version, payload, account_sid: @solution[:account_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Api.V2010.ApplicationPage>'
                    end
                end
                class ApplicationInstance < InstanceResource
                    ##
                    # Initialize the ApplicationInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Application
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [ApplicationInstance] ApplicationInstance
                    def initialize(version, payload , account_sid: nil, sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'api_version' => payload['api_version'],
                            'date_created' => Twilio.deserialize_rfc2822(payload['date_created']),
                            'date_updated' => Twilio.deserialize_rfc2822(payload['date_updated']),
                            'friendly_name' => payload['friendly_name'],
                            'message_status_callback' => payload['message_status_callback'],
                            'sid' => payload['sid'],
                            'sms_fallback_method' => payload['sms_fallback_method'],
                            'sms_fallback_url' => payload['sms_fallback_url'],
                            'sms_method' => payload['sms_method'],
                            'sms_status_callback' => payload['sms_status_callback'],
                            'sms_url' => payload['sms_url'],
                            'status_callback' => payload['status_callback'],
                            'status_callback_method' => payload['status_callback_method'],
                            'uri' => payload['uri'],
                            'voice_caller_id_lookup' => payload['voice_caller_id_lookup'],
                            'voice_fallback_method' => payload['voice_fallback_method'],
                            'voice_fallback_url' => payload['voice_fallback_url'],
                            'voice_method' => payload['voice_method'],
                            'voice_url' => payload['voice_url'],
                            'public_application_connect_enabled' => payload['public_application_connect_enabled'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'account_sid' => account_sid  ,'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [ApplicationContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = ApplicationContext.new(@version , @params['account_sid'], @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Application resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The API version used to start a new TwiML session.
                    def api_version
                        @properties['api_version']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT that the resource was created specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The date and time in GMT that the resource was last updated specified in [RFC 2822](https://www.ietf.org/rfc/rfc2822.txt) format.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] The string that you assigned to describe the resource.
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [String] The URL we call using a POST method to send message status information to your application.
                    def message_status_callback
                        @properties['message_status_callback']
                    end
                    
                    ##
                    # @return [String] The unique string that that we created to identify the Application resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The HTTP method we use to call `sms_fallback_url`. Can be: `GET` or `POST`.
                    def sms_fallback_method
                        @properties['sms_fallback_method']
                    end
                    
                    ##
                    # @return [String] The URL that we call when an error occurs while retrieving or executing the TwiML from `sms_url`.
                    def sms_fallback_url
                        @properties['sms_fallback_url']
                    end
                    
                    ##
                    # @return [String] The HTTP method we use to call `sms_url`. Can be: `GET` or `POST`.
                    def sms_method
                        @properties['sms_method']
                    end
                    
                    ##
                    # @return [String] The URL we call using a POST method to send status information to your application about SMS messages that refer to the application.
                    def sms_status_callback
                        @properties['sms_status_callback']
                    end
                    
                    ##
                    # @return [String] The URL we call when the phone number receives an incoming SMS message.
                    def sms_url
                        @properties['sms_url']
                    end
                    
                    ##
                    # @return [String] The URL we call using the `status_callback_method` to send status information to your application.
                    def status_callback
                        @properties['status_callback']
                    end
                    
                    ##
                    # @return [String] The HTTP method we use to call `status_callback`. Can be: `GET` or `POST`.
                    def status_callback_method
                        @properties['status_callback_method']
                    end
                    
                    ##
                    # @return [String] The URI of the resource, relative to `https://api.twilio.com`.
                    def uri
                        @properties['uri']
                    end
                    
                    ##
                    # @return [Boolean] Whether we look up the caller's caller-ID name from the CNAM database (additional charges apply). Can be: `true` or `false`.
                    def voice_caller_id_lookup
                        @properties['voice_caller_id_lookup']
                    end
                    
                    ##
                    # @return [String] The HTTP method we use to call `voice_fallback_url`. Can be: `GET` or `POST`.
                    def voice_fallback_method
                        @properties['voice_fallback_method']
                    end
                    
                    ##
                    # @return [String] The URL that we call when an error occurs retrieving or executing the TwiML requested by `url`.
                    def voice_fallback_url
                        @properties['voice_fallback_url']
                    end
                    
                    ##
                    # @return [String] The HTTP method we use to call `voice_url`. Can be: `GET` or `POST`.
                    def voice_method
                        @properties['voice_method']
                    end
                    
                    ##
                    # @return [String] The URL we call when the phone number assigned to this application receives a call.
                    def voice_url
                        @properties['voice_url']
                    end
                    
                    ##
                    # @return [Boolean] Whether to allow other Twilio accounts to dial this application using Dial verb. Can be: `true` or `false`.
                    def public_application_connect_enabled
                        @properties['public_application_connect_enabled']
                    end
                    
                    ##
                    # Delete the ApplicationInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        context.delete
                    end

                    ##
                    # Fetch the ApplicationInstance
                    # @return [ApplicationInstance] Fetched ApplicationInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Update the ApplicationInstance
                    # @param [String] friendly_name A descriptive string that you create to describe the resource. It can be up to 64 characters long.
                    # @param [String] api_version The API version to use to start a new TwiML session. Can be: `2010-04-01` or `2008-08-01`. The default value is your account's default API version.
                    # @param [String] voice_url The URL we should call when the phone number assigned to this application receives a call.
                    # @param [String] voice_method The HTTP method we should use to call `voice_url`. Can be: `GET` or `POST`.
                    # @param [String] voice_fallback_url The URL that we should call when an error occurs retrieving or executing the TwiML requested by `url`.
                    # @param [String] voice_fallback_method The HTTP method we should use to call `voice_fallback_url`. Can be: `GET` or `POST`.
                    # @param [String] status_callback The URL we should call using the `status_callback_method` to send status information to your application.
                    # @param [String] status_callback_method The HTTP method we should use to call `status_callback`. Can be: `GET` or `POST`.
                    # @param [Boolean] voice_caller_id_lookup Whether we should look up the caller's caller-ID name from the CNAM database (additional charges apply). Can be: `true` or `false`.
                    # @param [String] sms_url The URL we should call when the phone number receives an incoming SMS message.
                    # @param [String] sms_method The HTTP method we should use to call `sms_url`. Can be: `GET` or `POST`.
                    # @param [String] sms_fallback_url The URL that we should call when an error occurs while retrieving or executing the TwiML from `sms_url`.
                    # @param [String] sms_fallback_method The HTTP method we should use to call `sms_fallback_url`. Can be: `GET` or `POST`.
                    # @param [String] sms_status_callback Same as message_status_callback: The URL we should call using a POST method to send status information about SMS messages sent by the application. Deprecated, included for backwards compatibility.
                    # @param [String] message_status_callback The URL we should call using a POST method to send message status information to your application.
                    # @param [Boolean] public_application_connect_enabled Whether to allow other Twilio accounts to dial this application using Dial verb. Can be: `true` or `false`.
                    # @return [ApplicationInstance] Updated ApplicationInstance
                    def update(
                        friendly_name: :unset, 
                        api_version: :unset, 
                        voice_url: :unset, 
                        voice_method: :unset, 
                        voice_fallback_url: :unset, 
                        voice_fallback_method: :unset, 
                        status_callback: :unset, 
                        status_callback_method: :unset, 
                        voice_caller_id_lookup: :unset, 
                        sms_url: :unset, 
                        sms_method: :unset, 
                        sms_fallback_url: :unset, 
                        sms_fallback_method: :unset, 
                        sms_status_callback: :unset, 
                        message_status_callback: :unset, 
                        public_application_connect_enabled: :unset
                    )

                        context.update(
                            friendly_name: friendly_name, 
                            api_version: api_version, 
                            voice_url: voice_url, 
                            voice_method: voice_method, 
                            voice_fallback_url: voice_fallback_url, 
                            voice_fallback_method: voice_fallback_method, 
                            status_callback: status_callback, 
                            status_callback_method: status_callback_method, 
                            voice_caller_id_lookup: voice_caller_id_lookup, 
                            sms_url: sms_url, 
                            sms_method: sms_method, 
                            sms_fallback_url: sms_fallback_url, 
                            sms_fallback_method: sms_fallback_method, 
                            sms_status_callback: sms_status_callback, 
                            message_status_callback: message_status_callback, 
                            public_application_connect_enabled: public_application_connect_enabled, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Api.V2010.ApplicationInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Api.V2010.ApplicationInstance #{values}>"
                    end
                end

             end
            end
        end
    end
end


