## Printable Doors

designing printable web-app/sites.


## `print.css`
```css
@media print {

  * {
    background-image: none !important;
  }

  header, footer, aside, nav, form, iframe, .menu, .hero, .adslot {
    display: none;
  }

  .do-not-print {
    display: none !important;
  }

  h1 {
    break-before: always;
  }

  table, img, svg {
    break-inside: avoid;
  }

}

```

## `screen.css`
```css

@media screen {

  body {
    margin: 2em;
    color: #fff;
    background-color: #000;
  }

}

```

## definitions

![print page layout](/assets/references/1-image-margin-boxes-large-opt.jpg)  


## References

[smashingmagazine.com/2015/01/designing-for-print-with-css/](https://www.smashingmagazine.com/2015/01/designing-for-print-with-css/)  
[CSS Generated Content for Paged Media Module](https://www.w3.org/TR/css-gcpm-3/)  
[CSS Paged Media Module Level 3](https://www.w3.org/TR/css-page-3/)  
[developer.mozilla.org - Using CSS counters](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Counter_Styles/Using_CSS_counters)