((ample-regexps status "installed" recipe
                (:name ample-regexps :description "Compose and reuse Emacs regular expressions with ease" :type github :pkgname "immerrr/ample-regexps.el"))
 (anzu status "installed" recipe
       (:name anzu :website "https://github.com/syohex/emacs-anzu" :description "A minor mode which displays current match and total matches." :type "github" :branch "master" :pkgname "syohex/emacs-anzu"))
 (autopair status "installed" recipe
           (:name autopair :website "https://github.com/capitaomorte/autopair" :description "Autopair is an extension to the Emacs text editor that automatically pairs braces and quotes." :type github :pkgname "capitaomorte/autopair" :features autopair))
 (browse-kill-ring status "installed" recipe
                   (:name browse-kill-ring :description "Interactively insert items from kill-ring" :type github :pkgname "browse-kill-ring/browse-kill-ring" :prepare
                          (progn
                            (autoload 'browse-kill-ring-default-keybindings "browse-kill-ring"))))
 (color-theme status "installed" recipe
              (:name color-theme :description "An Emacs-Lisp package with more than 50 color themes for your use. For questions about color-theme" :website "http://www.nongnu.org/color-theme/" :type http-tar :options
                     ("xzf")
                     :url "http://download.savannah.gnu.org/releases/color-theme/color-theme-6.6.0.tar.gz" :load "color-theme.el" :features "color-theme" :post-init
                     (progn
                       (color-theme-initialize)
                       (setq color-theme-is-global t))))
 (company-mode status "installed" recipe
               (:name company-mode :website "http://company-mode.github.io/" :description "Modular in-buffer completion framework for Emacs" :type github :pkgname "company-mode/company-mode"))
 (csharp-mode status "installed" recipe
              (:name csharp-mode :website "https://code.google.com/p/csharpmode/" :description "This is a mode for editing C# in emacs. It's based on cc-mode, v5.30.3 and above." :type git-svn :url "http://csharpmode.googlecode.com/svn/trunk/"))
 (el-get status "installed" recipe
         (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "master" :pkgname "dimitri/el-get" :info "." :compile
                ("el-get.*\\.el$" "methods/")
                :load "el-get.el" :post-init
                (when
                    (memq 'el-get
                          (bound-and-true-p package-activated-list))
                  (message "Deleting melpa bootstrap el-get")
                  (unless package--initialized
                    (package-initialize t))
                  (when
                      (package-installed-p 'el-get)
                    (let
                        ((feats
                          (delete-dups
                           (el-get-package-features
                            (el-get-elpa-package-directory 'el-get)))))
                      (el-get-elpa-delete-package 'el-get)
                      (dolist
                          (feat feats)
                        (unload-feature feat t))))
                  (require 'el-get))))
 (fold-dwim status "installed" recipe
            (:name fold-dwim :website "https://github.com/emacsmirror/fold-dwim" :description "Unified user interface for Emacs folding mode" :type github :pkgname "emacsmirror/fold-dwim"))
 (ggtags status "installed" recipe
         (:name ggtags :description "Use GNU Global in Emacs." :type github :pkgname "leoliu/ggtags"))
 (git-emacs status "installed" recipe
            (:name git-emacs :description "Yet another git emacs mode for newbies" :type github :pkgname "tsgates/git-emacs" :features git-emacs))
 (lua-mode status "installed" recipe
           (:name lua-mode :description "A major-mode for editing Lua scripts" :depends
                  (ample-regexps)
                  :type github :pkgname "immerrr/lua-mode"))
 (monokai-theme status "installed" recipe
                (:name monokai-theme :website "https://github.com/oneKelvinSmith/monokai-emacs" :description "A fruity color theme for Emacs." :type elpa :prepare
                       (add-to-list 'custom-theme-load-path default-directory)))
 (package status "installed" recipe
          (:name package :description "ELPA implementation (\"package.el\") from Emacs 24" :builtin "24" :type http :url "http://repo.or.cz/w/emacs.git/blob_plain/ba08b24186711eaeb3748f3d1f23e2c2d9ed0d09:/lisp/emacs-lisp/package.el" :shallow nil :features package :post-init
                 (progn
                   (let
                       ((old-package-user-dir
                         (expand-file-name
                          (convert-standard-filename
                           (concat
                            (file-name-as-directory default-directory)
                            "elpa")))))
                     (when
                         (file-directory-p old-package-user-dir)
                       (add-to-list 'package-directory-list old-package-user-dir)))
                   (setq package-archives
                         (bound-and-true-p package-archives))
                   (mapc
                    (lambda
                      (pa)
                      (add-to-list 'package-archives pa 'append))
                    '(("ELPA" . "http://tromey.com/elpa/")
                      ("melpa" . "http://melpa.org/packages/")
                      ("gnu" . "http://elpa.gnu.org/packages/")
                      ("marmalade" . "http://marmalade-repo.org/packages/")
                      ("SC" . "http://joseito.republika.pl/sunrise-commander/"))))))
 (yasnippet status "installed" recipe
            (:name yasnippet :website "https://github.com/capitaomorte/yasnippet.git" :description "YASnippet is a template system for Emacs." :type github :pkgname "capitaomorte/yasnippet" :compile "yasnippet.el" :submodule nil :build
                   (("git" "submodule" "update" "--init" "--" "snippets")))))
