(setenv "PATH" (concat (getenv "PATH") ":/usr/local/texlive/2014/bin/x86_64-darwin/"))
(setq exec-path (append exec-path '("/usr/local/texlive/2014/bin/x86_64-darwin/")))

(setq org-latex-pdf-process '("xelatex -interaction nonstopmode %f" 
"xelatex -interaction nonstopmode %f"))


(require 'ox-latex)
(add-to-list 'org-latex-classes
             '("beamer"
               "\\documentclass\[presentation\]\{beamer\}
                \\usepackage[utf8]{inputenc}
                \\usepackage{fontspec}
                \\usepackage{xeCJK}
                \\setCJKmainfont{Hiragino Sans GB W3}
                \\XeTeXlinebreaklocale \"zh\"
                \\XeTeXlinebreakskip = 0pt plus 1pt
                \\usepackage{minted}
                \\usemintedstyle{emacs}
                \\setmainfont{Kaiti SC}
                \\usepackage{hyperref}
                \\usepackage{color}
                \\usepackage{verbatim}
                \\usepackage{upquote}"

               ;; ("\\section\{%s\}" . "\\section*\{%s\}")
               ;; ("\\subsection\{%s\}" . "\\subsection*\{%s\}")
               ;; ("\\subsubsection\{%s\}" . "\\subsubsection*\{%s\}")))
               ("\\section{%s}" . "\\section*{%s}")
               ("\\begin{frame}[fragile]\\frametitle{%s}"
                "\\end{frame}"
                "\\begin{frame}[fragile]\\frametitle{%s}"
                "\\end{frame}")))

(provide 'taotao-test01)



