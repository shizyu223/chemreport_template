FROM pandoc/latex:latest

RUN tlmgr update --self --all
RUN tlmgr install \
    luatexja \
    collection-langjapanese \
    collection-basic collection-latex \
    collection-latexrecommended collection-latexextra \
    collection-fontsrecommended collection-langjapanese \
    mhchem chemfig

RUN tlmgr install simplekv luatexbase ctablestack fontspec luaotfload lualatex-math \
    sourcesanspro sourcecodepro 

RUN apk --update --no-cache add pdf2svg --repository http://dl-cdn.alpinelinux.org/alpine/edge/testing \
    && apk --no-cache add git