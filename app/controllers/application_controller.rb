class ApplicationController < ActionController::Base
    def homepage
        render({template: "homepage.html.erb"})
    end

    def forex
        raw_file = open("https://api.exchangerate.host/symbols").read
        @data = JSON.parse(raw_file)
        render({template: "forex.html.erb"})
    end

    def covid
        render({template: "covid.html.erb"})
    end

    def from_currency
        raw_file = open("https://api.exchangerate.host/symbols").read
        @data = JSON.parse(raw_file)
        @from_currency = params.fetch("from_currency")
        render({template: "from_currency.html.erb"})
    end

    def to_currency
        @from_currency = params.fetch("from_currency")
        @to_currency = params.fetch("to_currency")
        raw_file = open("https://api.exchangerate.host/convert?from=" + @from_currency + "&to=" + @to_currency).read
        @data = JSON.parse(raw_file)
        render({template: "to_currency.html.erb"})
    end
end
