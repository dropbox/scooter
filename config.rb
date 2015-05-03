# Set markdown engine so we can get TOC
set :markdown_engine, :redcarpet
set :markdown, with_toc_data: true, :fenced_code_blocks => true, :smartypants => true

###
# Compass
###

# Change Compass configuration
compass_config do |config|
  config.output_style = :compact
  sourcemap = true
end

# Proxy pages (https://middlemanapp.com/advanced/dynamic_pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }

###
# Helpers
###

# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes

configure :development do
  activate :livereload

  set :sass, :sourcemap => :inline
end

# Methods defined in the helpers block are available in templates
helpers do
  def nav_active(path)
    current_page.path == path ? {:class => "is-active"} : {}
  end

  def table_of_contents(resource)
    content = File.read(resource.source_file)
    toc_renderer = Redcarpet::Render::HTML_TOC.new(nesting_level: 2)
    markdown = Redcarpet::Markdown.new(toc_renderer)
    markdown.render(content)
  end
end

set :source, "docs/source"
set :build_dir, "docs/build"

set :css_dir, 'assets/css'

set :js_dir, 'assets/js'

set :images_dir, 'assets/images'

# Relative links for assets that actually work no gh-pages
activate :relative_assets
set :relative_links, true

# Syntax highlighting
activate :syntax

# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end

# Deployment to gh-pages
activate :deploy do |deploy|
  deploy.method = :git
  # Optional Settings
  # deploy.remote   = 'custom-remote' # remote name or git url, default: origin
  # deploy.branch   = 'custom-branch' # default: gh-pages
  # deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  # deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
end
