## chemreport_template  

化学系のレポートを書くために個人的に使っているテンプレートです.

### pandoc での pdf化のコマンドサンプル

```
pandoc -F pandoc-crossref report.md -o report.pdf --pdf-engine=lualatex -V documentclass=ltjarticle
```

pandocによるmarkdownのpdf化をする環境です. この環境にはlualatexが入っており、日本語に対応するためのパッケージや化学系のためのmhchemやchemfigなどをinstallしてあります.  

### chemfigでの構造式の例
```
$$
\setchemfig{atom sep=2.50em,arrow coeff=1.25}
\schemestart
   \chemfig{
               O% 1
         =[:30]N^{+}% 2
                  (
             -[@{g1}:90]@{s1}O^{-}% 4
                  )
    -[@{s2}:330,,,1]OH% 3
   }
   \chemfig{
      @{g2}H^{+}
   }
   \arrow{->}
   \chemfig{
          O% 1
    =[:30]N^{+}% 2
    =[:90]O% 3
   }
\schemestop
\chemmove{
   \draw(s1)..controls +(180:5mm) and +(145:5mm)..(g1);
   \draw(s2)..controls +(80:5mm) and +(145:5mm)..(g2);
}
$$
```