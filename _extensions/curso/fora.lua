-- fora.lua — shortcode  {{< fora >}}
-- Marca discreta de procedência: a seção é exigida pelo sumário oficial mas
-- NÃO tem correspondente no livro-texto que serve de fio condutor à unidade
-- (Moysés, nas UE 3 e 4). Serve ao aluno, que assim sabe não procurar o
-- assunto no livro, e ao professor, que vê de relance o que é material
-- próprio do curso.
-- Uso:  ## Título da seção {{< fora >}}
-- Um argumento opcional troca o nome da fonte:  {{< fora Halliday >}}
-- Estilo definido em theme.scss (.fora-marca). No PDF, vira adaga sobrescrita.
-- Legenda do símbolo: index.qmd, nota do cronograma.

return {
  ['fora'] = function(args, kwargs, meta)
    local fonte = args[1] and pandoc.utils.stringify(args[1]) or 'Moysés'
    local titulo = 'Conteúdo do sumário oficial sem correspondente no ' .. fonte

    if quarto.doc.is_format('html') then
      return pandoc.RawInline('html',
        '<span class="fora-marca" title="' .. titulo .. '">&dagger;</span>')
    else
      -- PDF / Typst / outros: adaga sobrescrita, legenda no índice
      return pandoc.Superscript({ pandoc.Str('†') })
    end
  end
}
