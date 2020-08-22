Assembly syntax highlighting for gedit
======================================

- [Extra GtkSourceView language definitions](https://wiki.gnome.org/Projects/GtkSourceView/LanguageDefinitions)
    - [asm_intel.lang](https://wiki.gnome.org/Projects/GtkSourceView/LanguageDefinitions?action=AttachFile&do=get&target=asm_intel.lang),
      included.
    - [i386asm.lang](https://wiki.gnome.org/Projects/GtkSourceView/LanguageDefinitions?action=AttachFile&do=get&target=i386asm.lang),
      included as `asm_att.lang`.
- https://github.com/cdclaxton/gedit-assembly-language-syntax-highlighter

Install to `/usr/share/gtksourceview-3.0/language-specs/`:

```
sudo install -Dt /usr/share/gtksourceview-3.0/language-specs/ *.lang
```
