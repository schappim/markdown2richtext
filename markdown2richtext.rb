#!/usr/bin/env ruby

require 'redcarpet'
require 'tempfile'

# Convert Markdown to HTML
def markdown_to_html(markdown_content)
  renderer = Redcarpet::Render::HTML.new
  markdown = Redcarpet::Markdown.new(renderer)
  markdown.render(markdown_content)
end

# Convert HTML to RTF using textutil and copy to clipboard
def html_to_rtf_clipboard(html_content)
  temp_html = Tempfile.new(['temp','.html'])
  temp_rtf  = Tempfile.new(['temp','.rtf'])

  temp_html.write(html_content)
  temp_html.close

  system("textutil -convert rtf #{temp_html.path} -output #{temp_rtf.path}")
  system("cat #{temp_rtf.path} | pbcopy")

  temp_html.unlink
  temp_rtf.unlink
end

if ARGV.length != 1
  puts "Usage: ruby markdown_to_clipboard.rb <path_to_markdown_file>"
  exit
end

markdown_file = ARGV[0]
markdown_content = File.read(markdown_file)

html_content = markdown_to_html(markdown_content)
html_to_rtf_clipboard(html_content)

puts "Formatted content copied to clipboard!"
