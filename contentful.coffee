module.exports = 
  access_token: '6fb5f2134d7eeeb3cc657689be0b3552e346ed1bf4c7ff55578a22d458ec11e5'
  management_token: '7c727dcd5e09e2cc78b15b7aa634241fd9fa049dbb28eb4311c481c2196dd890'
  space_id: 'f6bh1o5fqbm8'
  content_types:                    # remove these object braces once the config below is filled out
    featuredProjects:                          # data will be made available through this key on the `contentful` object in your templates
      id: 'featuredProject'                    # ID of your content type
      template: 'views/templates/_featured_projects.jade'  # if present a single page view will be created for each entry in the content type
      path: (entry) -> "#{entry.slug}"             # override function for generating single page file path, passed in the entry object
      #filters: {}                   # passes filters to the call to contentful's API, see contentful's docs for more info
    selectedWorks:
      id: 'selectedWork'
      template: 'views/templates/_selected_works.jade'
      path: (entry) -> "#{entry.slug}"
      #filters: {}
    featuredArtist:
      id: 'featuredArtist'