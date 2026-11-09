# Site drguilhermericcioppo.com.br

Site estático (HTML + CSS), sem dependência de plataforma. Funciona em qualquer hospedagem.

## Estrutura

- `index.html`: página inicial
- `curriculo.html`: currículo
- `currículo/index.html`: redireciona o endereço antigo do Wix (/currículo) para a página nova
- `style.css`: todo o visual (cores no topo do arquivo, em `:root`)
- `img/`: fotos (preenchida pelo script abaixo)
- `CNAME`: domínio, usado pelo GitHub Pages
- `404.html`, `robots.txt`, `sitemap.xml`

## 1. Baixar as fotos do Wix (antes de cancelar o Wix!)

No Terminal do Mac, dentro da pasta do site:

    bash baixar-imagens.sh

Depois, abra `index.html` no navegador para conferir.

## 2. Publicar no GitHub Pages

1. Em github.com, crie um repositório novo (ex.: `site`), público.
2. Na página do repositório: **Add file > Upload files**, arraste todo o conteúdo da pasta (não a pasta em si) e clique em **Commit changes**.
3. **Settings > Pages**: em *Source* escolha **Deploy from a branch**, branch `main`, pasta `/ (root)`, **Save**.
4. Em 1 a 2 minutos o site aparece em `https://SEU-USUARIO.github.io/site/`. Confira antes de mexer no domínio.

## 3. Apontar o domínio

No painel onde o domínio está registrado (Registro.br, se o Wix não for o registrador), em **DNS**, crie:

| Tipo  | Nome | Valor                   |
|-------|------|-------------------------|
| A     | @    | 185.199.108.153         |
| A     | @    | 185.199.109.153         |
| A     | @    | 185.199.110.153         |
| A     | @    | 185.199.111.153         |
| CNAME | www  | SEU-USUARIO.github.io   |

Apague os registros antigos que apontam para o Wix. Depois, em **Settings > Pages**, confirme o domínio `www.drguilhermericcioppo.com.br` e marque **Enforce HTTPS** quando liberar (pode levar algumas horas).

Para manter o e-mail (se houver algum no domínio), não apague registros MX.

## 4. Editar no futuro

Abra o `.html` no GitHub, clique no lápis, altere o texto e faça *Commit*. O site atualiza sozinho em cerca de 1 minuto.

## Histórico de versões

- **1.2 (novembro de 2026):** SEO (títulos e descrições por página, dados estruturados do médico com endereço, CEP e horário iguais aos do Perfil da Empresa no Google, páginas médicas com autor e data de revisão, lista de vídeos), fotos em WebP, redirecionamento do endereço antigo do Wix (/currículo), ícones do site a partir da logo e sitemap com datas.
- **1.1 (novembro de 2026):** página de vídeos para cuidadores (`videos.html`), textos sobre tratamento da doença de Alzheimer (`alzheimer.html`) e da doença de Parkinson (`parkinson.html`), chamadas na página inicial, menu com "Vídeos", RQE no cabeçalho e no rodapé, descrição para o Google sem o termo "especialista" e fotos otimizadas (de cerca de 28 MB para 0,7 MB).
- **1.0 (novembro de 2026):** migração do Wix para o GitHub Pages.
