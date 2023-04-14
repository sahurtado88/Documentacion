# Markdown Cheat Sheet

Thanks for visiting [The Markdown Guide](https://www.markdownguide.org)!

This Markdown cheat sheet provides a quick overview of all the Markdown syntax elements. It can’t cover every edge case, so if you need more information about any of these elements, refer to the reference guides for [basic syntax](https://www.markdownguide.org/basic-syntax) and [extended syntax](https://www.markdownguide.org/extended-syntax).

## Basic Syntax

These are the elements outlined in John Gruber’s original design document. All Markdown applications support these elements.

### Heading

# H1
## H2
### H3

### Bold

**bold text**

### Italic

*italicized text*

### Blockquote

> blockquote

### Ordered List

1. First item
2. Second item
3. Third item

### Unordered List

- First item
- Second item
- Third item

### Code

`code`

### Horizontal Rule

---

### Link

[Markdown Guide](https://www.markdownguide.org)

### Image

![alt text](https://www.markdownguide.org/assets/images/tux.png)

## Extended Syntax

These elements extend the basic syntax by adding additional features. Not all Markdown applications support these elements.

### Table

| Syntax | Description |
| ----------- | ----------- |
| Header | Title |
| Paragraph | Text |

### Fenced Code Block

```
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```

### Footnote

Here's a sentence with a footnote. [^1]

[^1]: This is the footnote.

### Heading ID

### My Great Heading {#custom-id}

### Definition List

term
: definition

### Strikethrough

~~The world is flat.~~

### Task List

- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media

### Emoji

That is so funny! :joy:

(See also [Copying and Pasting Emoji](https://www.markdownguide.org/extended-syntax/#copying-and-pasting-emoji))

### Highlight

I need to highlight these ==very important words==.

### Subscript

H~2~O

### Superscript

X^2^

**Control+ space activates intellisense visual studio**


*Texto en cursiva*

_Texto en cursiva_

**Texto en negrita**

__Texto en negrita__

***Texto en cursiva y negrita***

___Texto en cursiva y negrita___

~~Este texto está tachado.~~ Pero este no.


Puedes colocar [^1] notas en el pie de página [^2] fácilmente.

[^1]: Aquí encuentras el texto de la nota al pie de página.

[^2]: **Las notas de pie de página** pueden *formatearse* también.

Estas pueden ocupar varias líneas.

Asimismo, Markdown te da la opción de crear listas de verificación, que vienen con casillas que pueden activarse haciendo clic sobre ellas. Si quieres, puedes marcar directamente las casillas al crear la lista. Para ello, utiliza corchetes y una X.

[ ] A
[x] B
[ ] C