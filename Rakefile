require 'spec/rake/spectask'

task :default => [:build]

desc "Builds OPML specification file" do
  sh "xsltproc specgen.xsl schema.rng > spec.html"
end