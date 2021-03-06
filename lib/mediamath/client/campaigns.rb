module MediaMathAPI
  class Client
    module Campaigns
      def campaigns(page_limit = Configuration::DEFAULT_PAGINATION_LIMIT,
                    page_offset = nil,
                    q = nil,
                    sort_by = nil,
                    full = '*',
                    with = nil)
        options = {}
        # Optionals
        options.merge!(page_limit: page_limit) if page_limit
        options.merge!(page_offset: page_offset) if page_offset
        options.merge!(q: q) if q
        options.merge!(sort_by: sort_by) if sort_by
        options.merge!(full: full) if full
        options.merge!(with: with) if with

        get(Configuration::DETAIL_API_PREFIX + "/campaigns", options)
      end

      def campaign(campaign_id)
        get(Configuration::DETAIL_API_PREFIX +
            "/campaigns/#{campaign_id}")
      end
    end
  end
end
