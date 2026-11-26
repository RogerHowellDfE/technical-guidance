# DfE Technical Guidance

How we build and operate products at the Department for Education. This repo
is inspired by (and steals shamelessly from) the [GDS Way](https://gds-way.cloudapps.digital) and the
[Ministry of Justice Technical Guidance](https://ministryofjustice.github.io/technical-guidance/#moj-technical-guidance).

It's built using the GOV.UK [tech-docs-template](https://github.com/alphagov/tech-docs-template).

## Add a new guidance
See the [Adding a new guidance][/guides/adding-new-guidance] section.

## Run the site locally

The repository includes a [dev container](https://containers.dev/) so you do
not need to install Ruby locally. You need Docker and either VS Code with the
Dev Containers extension or GitHub Codespaces.

1. Open the repository and choose "Reopen in Container". Gems install
   automatically on first start.
2. In the container terminal, run `bundle exec middleman server --bind-address=0.0.0.0`.
3. Open <http://localhost:4567>.

To check a production build and its links, run `make check-links`.

Without the dev container, use the Ruby version in `.ruby-version` and a
supported Node.js LTS release, then run `bundle install`. Node.js provides
the JavaScript runtime needed to build the site's assets.

## Site assets

The favicons are vendored unchanged from the
[DfE design repository](https://github.com/DFE-Digital/design/tree/b1fe52b1ed4c0663c5cb48a5cc6e87524432ef75/app/public/images).
Their reuse does not require enabling `show_govuk_logo`; the site retains its
text-only header.

## Licence

The documentation is [© Crown copyright][copyright] and available under the terms of the [Open Government 3.0][ogl] licence.

[just]: https://github.com/casey/just
[mise]: https://mise.jdx.dev/
[bundler]: http://bundler.io/
[mit]: LICENCE
[copyright]: http://www.nationalarchives.gov.uk/information-management/re-using-public-sector-information/uk-government-licensing-framework/crown-copyright/
[ogl]: http://www.nationalarchives.gov.uk/doc/open-government-licence/version/3/
[Staticfile buildpack]: https://docs.cloudfoundry.org/buildpacks/staticfile/index.html
[cdn-route]: https://docs.cloud.service.gov.uk/deploying_services/use_a_custom_domain/#managing-custom-domains-using-the-cdn-route-service
[govuk-tech-docs gem]: https://github.com/alphagov/tech-docs-gem
[middleman]: https://middlemanapp.com/
