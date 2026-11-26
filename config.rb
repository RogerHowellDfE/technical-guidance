require 'govuk_tech_docs'

GovukTechDocs.configure(self)

set :layout, 'custom'

configure :build do
    # Sharing metadata uses an absolute URL with this fixed filename.
    activate :asset_hash, ignore: ['images/opengraph-image.png']
end
