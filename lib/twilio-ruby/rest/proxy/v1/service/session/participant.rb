##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Proxy
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
    module REST
        class Proxy < ProxyBase
            class V1 < Version
                class ServiceContext < InstanceContext
                class SessionContext < InstanceContext

                     class ParticipantList < ListResource
                    ##
                    # Initialize the ParticipantList
                    # @param [Version] version Version that contains the resource
                    # @return [ParticipantList] ParticipantList
                    def initialize(version, service_sid: nil, session_sid: nil)
                        super(version)
                        # Path Solution
                        @solution = { service_sid: service_sid, session_sid: session_sid }
                        @uri = "/Services/#{@solution[:service_sid]}/Sessions/#{@solution[:session_sid]}/Participants"
                        
                    end
                    ##
                    # Create the ParticipantInstance
                    # @param [String] identifier The phone number of the Participant.
                    # @param [String] friendly_name The string that you assigned to describe the participant. This value must be 255 characters or fewer. **This value should not have PII.**
                    # @param [String] proxy_identifier The proxy phone number to use for the Participant. If not specified, Proxy will select a number from the pool.
                    # @param [String] proxy_identifier_sid The SID of the Proxy Identifier to assign to the Participant.
                    # @return [ParticipantInstance] Created ParticipantInstance
                    def create(
                        identifier: nil, 
                        friendly_name: :unset, 
                        proxy_identifier: :unset, 
                        proxy_identifier_sid: :unset
                    )

                        data = Twilio::Values.of({
                            'Identifier' => identifier,
                            'FriendlyName' => friendly_name,
                            'ProxyIdentifier' => proxy_identifier,
                            'ProxyIdentifierSid' => proxy_identifier_sid,
                        })

                        payload = @version.create('POST', @uri, data: data)
                        ParticipantInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                            session_sid: @solution[:session_sid],
                        )
                    end

                
                    ##
                    # Lists ParticipantInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(limit: nil, page_size: nil)
                        self.stream(
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields ParticipantInstance records from the API.
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
                    # Retrieve a single page of ParticipantInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of ParticipantInstance
                    def page(page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        ParticipantPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of ParticipantInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of ParticipantInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    ParticipantPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.Proxy.V1.ParticipantList>'
                    end
                end


                ##
                #PLEASE NOTE that this class contains beta products that are subject to change. Use them with caution.
                class ParticipantContext < InstanceContext
                    ##
                    # Initialize the ParticipantContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] service_sid The SID of the parent [Service](https://www.twilio.com/docs/proxy/api/service) of the resource to fetch.
                    # @param [String] session_sid The SID of the parent [Session](https://www.twilio.com/docs/proxy/api/session) of the resource to fetch.
                    # @param [String] sid The Twilio-provided string that uniquely identifies the Participant resource to fetch.
                    # @return [ParticipantContext] ParticipantContext
                    def initialize(version, service_sid, session_sid, sid)
                        super(version)

                        # Path Solution
                        @solution = { service_sid: service_sid, session_sid: session_sid, sid: sid,  }
                        @uri = "/Services/#{@solution[:service_sid]}/Sessions/#{@solution[:session_sid]}/Participants/#{@solution[:sid]}"

                        # Dependents
                        @message_interactions = nil
                    end
                    ##
                    # Delete the ParticipantInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        @version.delete('DELETE', @uri)
                    end

                    ##
                    # Fetch the ParticipantInstance
                    # @return [ParticipantInstance] Fetched ParticipantInstance
                    def fetch

                        payload = @version.fetch('GET', @uri)
                        ParticipantInstance.new(
                            @version,
                            payload,
                            service_sid: @solution[:service_sid],
                            session_sid: @solution[:session_sid],
                            sid: @solution[:sid],
                        )
                    end

                    ##
                    # Access the message_interactions
                    # @return [MessageInteractionList]
                    # @return [MessageInteractionContext] if sid was passed.
                    def message_interactions(sid=:unset)

                        raise ArgumentError, 'sid cannot be nil' if sid.nil?

                        if sid != :unset
                            return MessageInteractionContext.new(@version, @solution[:service_sid], @solution[:session_sid], @solution[:sid],sid )
                        end

                        unless @message_interactions
                            @message_interactions = MessageInteractionList.new(
                                @version, service_sid: @solution[:service_sid],  session_sid: @solution[:session_sid],  participant_sid: @solution[:sid],  )
                        end

                     @message_interactions
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Proxy.V1.ParticipantContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.Proxy.V1.ParticipantContext #{context}>"
                    end
                end

                class ParticipantPage < Page
                    ##
                    # Initialize the ParticipantPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [ParticipantPage] ParticipantPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of ParticipantInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [ParticipantInstance] ParticipantInstance
                    def get_instance(payload)
                        ParticipantInstance.new(@version, payload, service_sid: @solution[:service_sid], session_sid: @solution[:session_sid])
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.Proxy.V1.ParticipantPage>'
                    end
                end
                class ParticipantInstance < InstanceResource
                    ##
                    # Initialize the ParticipantInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this Participant
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [ParticipantInstance] ParticipantInstance
                    def initialize(version, payload , service_sid: nil, session_sid: nil, sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'sid' => payload['sid'],
                            'session_sid' => payload['session_sid'],
                            'service_sid' => payload['service_sid'],
                            'account_sid' => payload['account_sid'],
                            'friendly_name' => payload['friendly_name'],
                            'identifier' => payload['identifier'],
                            'proxy_identifier' => payload['proxy_identifier'],
                            'proxy_identifier_sid' => payload['proxy_identifier_sid'],
                            'date_deleted' => Twilio.deserialize_iso8601_datetime(payload['date_deleted']),
                            'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
                            'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
                            'url' => payload['url'],
                            'links' => payload['links'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'service_sid' => service_sid  || @properties['service_sid']  ,'session_sid' => session_sid  || @properties['session_sid']  ,'sid' => sid  || @properties['sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [ParticipantContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = ParticipantContext.new(@version , @params['service_sid'], @params['session_sid'], @params['sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The unique string that we created to identify the Participant resource.
                    def sid
                        @properties['sid']
                    end
                    
                    ##
                    # @return [String] The SID of the parent [Session](https://www.twilio.com/docs/proxy/api/session) resource.
                    def session_sid
                        @properties['session_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the resource's parent [Service](https://www.twilio.com/docs/proxy/api/service) resource.
                    def service_sid
                        @properties['service_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Participant resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The string that you assigned to describe the participant. This value must be 255 characters or fewer. Supports UTF-8 characters. **This value should not have PII.**
                    def friendly_name
                        @properties['friendly_name']
                    end
                    
                    ##
                    # @return [String] The phone number or channel identifier of the Participant. This value must be 191 characters or fewer. Supports UTF-8 characters.
                    def identifier
                        @properties['identifier']
                    end
                    
                    ##
                    # @return [String] The phone number or short code (masked number) of the participant's partner. The participant will call or message the partner participant at this number.
                    def proxy_identifier
                        @properties['proxy_identifier']
                    end
                    
                    ##
                    # @return [String] The SID of the Proxy Identifier assigned to the Participant.
                    def proxy_identifier_sid
                        @properties['proxy_identifier_sid']
                    end
                    
                    ##
                    # @return [Time] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date when the Participant was removed from the session.
                    def date_deleted
                        @properties['date_deleted']
                    end
                    
                    ##
                    # @return [Time] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time in GMT when the resource was created.
                    def date_created
                        @properties['date_created']
                    end
                    
                    ##
                    # @return [Time] The [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) date and time in GMT when the resource was last updated.
                    def date_updated
                        @properties['date_updated']
                    end
                    
                    ##
                    # @return [String] The absolute URL of the Participant resource.
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # @return [Hash] The URLs to resources related the participant.
                    def links
                        @properties['links']
                    end
                    
                    ##
                    # Delete the ParticipantInstance
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete

                        context.delete
                    end

                    ##
                    # Fetch the ParticipantInstance
                    # @return [ParticipantInstance] Fetched ParticipantInstance
                    def fetch

                        context.fetch
                    end

                    ##
                    # Access the message_interactions
                    # @return [message_interactions] message_interactions
                    def message_interactions
                        context.message_interactions
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Proxy.V1.ParticipantInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.Proxy.V1.ParticipantInstance #{values}>"
                    end
                end

             end
             end
            end
        end
    end
end


