# `phlex-markdown`

`Phlex::Markdown` is a [Phlex](https://phlex.fun) view that renders Markdown into HTML using Phlex. That means, you can define a class that inherits from `Phlex::Markdown` and override various methods to customise the output.

For example, here we override `h1` and `ul`, adding some Tailwind classes.

```ruby
class MyMarkdown < Phlex::Markdown
  def h1 = super(class: "font-bold text-xl")
  def ul = super(class: "ml-4 pt-2")
end
```

When can render this view with some Markdown.

```ruby
content = <<~MD
  # Hello World

  - A
  - B
  - C
MD

output = MyMarkdown.new(content).call
```

And `output` will be

```html
<h1 class="font-bold text-xl">Hello World</h1>
<ul class="ml-4 pt-2">
  <li>A</li>
  <li>B</li>
  <li>C</li>
</ul>
```

### Community 🙌

Everyone interacting in Phlex codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/joeldrapper/phlex/blob/main/CODE_OF_CONDUCT.md).

### Sponsorship 💖

Maintaining a library is a lot of work. If your company benefits from this work or is likely to benefit from it in the future, please consider [sponsorship](https://github.com/sponsors/joeldrapper). Phlex is actively developed and maintained by **[Joel Drapper](https://github.com/sponsors/joeldrapper)**.

### Security 🚨

If you’ve found a potential security issue, please email [security@phlex.fun](mailto:security@phlex.fun).
