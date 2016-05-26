module.exports = 
  access_token: 'xxxxx'
  management_token: 'xxxxx'
  space_id: 'xxxxx'
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