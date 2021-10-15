# textobj-heredoc

This vim plugin provides text objects for heredocs. The `ah` text object select
‘all the heredoc’ (including delimiters) and `ih` selects ‘inside the heredoc’.

Currently only [Elixir](https://elixir-lang.org/) is supported. I mostly use
this to autoformat multi-line `@doc` and `@moduledoc` [module
attributes](https://elixir-lang.org/getting-started/module-attributes.html) via
`gqih`.

Pull requests to support other languages are welcome.

See [`:help textobj-heredoc`](doc/textobj-heredoc.txt] for more details.

## License

This software is released under the MIT license. See the LICENSE file.
