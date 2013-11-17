# Craigasaurus

Craigasaurus can be used to discover Craigslist URLs, search RSS feeds for keyword combinations and count keywords across multiple sites.

## Installation

Add this line to your application's Gemfile:

    gem 'craigasaurus'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install craigasaurus

## Usage

```
cl = Craigasaurus::Client.new

# Search Portland's Craigslist for Ninja Rockstar jobs in gigs/computer.
cl.search(urls: ['http://portland.craigslist.org'], categories: ['gigs'], subcategories: ['computer'], keywords: ['ninja', 'rockstar'])
=> [#<Craigasaurus::Post:0x1337807 @body="Only ninja rockstar code typers!", @url="http://portland.craigslist.org/mlt/cpg/42.html">]

# Discover all of the Craigslist URLs linked from Portland's Craigslist page.
discovered = cl.discover_urls('portland.craigslist.org')
=> ['http://bend.craigslist.org', 'http://eugene.craigslist.org', 'http://oregoncoast.craigslist.org']

# Search 'jobs/internet engineers' and 'gigs/computer' on the discovered Craiglists for totally radical perks.
cl.search(urls: discovered, categories: ['jobs', 'gigs'], subcategories: ['internet engineers', 'computer'], keywords: ['ping pong', 'beer keg'])
=> []

# Give up and go work for the man.
cl.search(url: 'portland', category: 'jobs', subcategory: 'government', keyword: 'tps expert')
=> [#<Craigasaurus::Post:0x1337807 @body="Seeking TPS expert for LTR", @url="http://portland.craigslist.org/clk/gov/42.html">]
# Note that argument keys can be singular or plural, and URLs need only subdomains.

# Choose a language for your triumphant return.
cl.keyword_count(urls: discovered, keywords: ['haskell', 'go'], category: 'gigs', subcategory: 'computer')
=> {:haskell=>1, :go=>2}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
