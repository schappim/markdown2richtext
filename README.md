# Markdown to Rich Text Clipboard (markdown2richtext.rb)

Copy your Markdown content as rich-formatted text directly to your macOS clipboard with a single command.

## Description

`markdown2richtext.rb` is a simple Ruby script that takes your Markdown files and copies them as rich-formatted text (RTF) onto your macOS clipboard. It's perfect for quickly pasting your Markdown content into applications that support RTF like email clients, word processors, or other documentation tools.

I created this to transform markdown from ChatGPT into rich text.

## Prerequisites

- Ruby
- The `redcarpet` gem

## Installation

1. Clone this repository:

```bash
git clone https://github.com/schappim/markdown2richtext.git
cd M2RC
```

2. Install the required gem:

```bash
gem install redcarpet
```

## Usage

Run the script with:

```bash
ruby markdown2richtext.rb path_to_your_markdown_file.md
```

Once executed, your converted Markdown content will be on your clipboard, ready to be pasted as rich-formatted text!

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)

---
