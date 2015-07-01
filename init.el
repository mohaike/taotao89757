;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 调试emacs的时候必须打开！！！
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(eval-after-load "warnings" 
    '(setq display-warning-minimum-level :error))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 初始化文件以及相关路径导入
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d")
(add-to-list 'load-path "~/.emacs.d/plugin")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(add-to-list 'load-path "~/.emacs.d/taotao-highlight-symbol")
(add-to-list 'load-path "~/.emacs.d/taotao-org-2-tex")
(add-to-list 'load-path "~/.emacs.d/taotao-balabala")
;; (add-to-list 'load-path "~/rtags/rtags/src") ;rtags 还是不知所以然
(require 'inside-init)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 防止残废设定
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'appt)
(setq appt-message-warning-time 0)      ; 0 minute time before warning
(setq diary-file "~/.emacs.d/PreventDisableSetting/StandUp")             ; diary file
(appt-activate)                         ;设定开机自动打开闹钟设定
(delete-other-windows)                  ;设定关闭日程表


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 有道词典
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c 0") 'youdao-dictionary-search-at-point) 
(global-set-key (kbd "C-c C-0") 'youdao-dictionary-search-at-point+) 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; el-get
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(el-get 'sync)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 括号自动匹配
;; dired-single
;; yas-global-mode开关
;; 加载hct-macro宏文件
;; emacs theme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autopair-global-mode)                  ;enable autopair in all buffers
;; (require 'dired-single)                 ;dired-single
(global-set-key (kbd "M-#") 'yas-global-mode) ;yas-global-mode开关
(load-file "~/.emacs.d/macros/hct-macro.macs") ;加载hct-macro宏文件
;; (color-theme-blue-mood)                 ;emacs theme
(load-theme 'monokai t)                 ;虽然很漂亮的说，不过我还是不大习惯

(global-set-key (kbd "M-s-w") 'hct-window)
(global-set-key (kbd "M-s-q") 'hct-window-undo)
(global-set-key (kbd "M-s-g") 'hct-gs-window)
(global-set-key (kbd "M-s-x") 'hct-cp)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; browse-kill-ring
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-c k") 'browse-kill-ring)
(browse-kill-ring-default-keybindings)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; taotao-highlight-symbol
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'taotao-highlight-symbol)
(global-set-key (kbd "M-|") 'taotao-highlight-symbol-at-point)
(global-set-key (kbd "M-]") 'taotao-highlight-symbol-next)
(global-set-key (kbd "M-[") 'taotao-highlight-symbol-prev)
(global-set-key (kbd "M-N") 'taotao-highlight-symbol-next)
(global-set-key (kbd "M-P") 'taotao-highlight-symbol-prev)
(global-set-key (kbd "M-r") 'taotao-highlight-symbol-query-replace)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; anzu
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-anzu-mode 1)
(global-set-key (kbd "M-%") 'anzu-query-replace)
(global-set-key (kbd "C-M-%") 'anzu-query-replace-regexp)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(anzu-deactivate-region t)
 '(anzu-mode-lighter "")
 '(anzu-replace-to-string-separator " => ")
 '(anzu-search-threshold 1000)
 '(custom-safe-themes (quote ("64581032564feda2b5f2cf389018b4b9906d98293d84d84142d90d7986032d33" default)))
 '(safe-local-variable-values (quote ((require-final-newline . t)))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; auto-complete
;; auto-complete需要popup fuzzy的支持
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'popup)
(require 'fuzzy)

(require 'auto-complete-config)
(ac-config-default)

(define-key ac-mode-map (kbd "M-?") 'auto-complete)
(global-set-key (kbd "M-`") 'auto-complete-mode) ;auto-complete-mode开关
(setq ac-auto-show-menu 10)             ;设置自动提示界面的显示时间


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; xhtml, html代码的折叠
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(defun my-xhtml-extras () 
   (make-local-variable 'outline-regexp) 
   (setq outline-regexp "\\s *<\\([h][1-6]\\|html\\|body\\|head\\)\\b") 
   (make-local-variable 'outline-level) 
   (setq outline-level 'my-xhtml-outline-level) 
   (outline-minor-mode 1) 
   (hs-minor-mode 1))
(defun my-xhtml-outline-level () 
   (save-excursion (re-search-forward html-outline-level)) 
   (let ((tag (buffer-substring (match-beginning 1) (match-end 1)))) 
     (if (eq (length tag) 2) 
         (- (aref tag 1) ?0) 
       0))) 

;; xml文件的代码折叠
(add-to-list 'hs-special-modes-alist
              '(nxml-mode 
                "<!--\\|<[^/>]>\\|<[^/][^>]*[^/]>" 
                "" 
                "<!--" ;; won't work on its own; uses syntax table 
                (lambda (arg) (my-nxml-forward-element)) 
                nil)) 
(defun my-nxml-forward-element () 
   (let ((nxml-sexp-element-flag)) 
     (setq nxml-sexp-element-flag (not (looking-at "<!--"))) 
     (unless (looking-at outline-regexp) 
       (condition-case nil 
           (nxml-forward-balanced-item 1) 
         (error nil))))) 
(require 'fold-dwim)

;; 设置一打开就是xml时候就可以实现折叠代码
(setq testBufferFileName (buffer-file-name))
(setq notTestBufferFileName (not testBufferFileName))

;; 假如testBufferFileName不为空的话
(if testBufferFileName
    (progn                              ;
    (setq testBufferFileNameVersion (file-name-sans-versions (buffer-file-name)))
    (setq notTestBufferFileNameVersion (not testBufferFileNameVersion)))

    (setq testBufferFileNameVersion ""))

(when (string-match "\\.\\(xml\\|x?html\\|php[34]?\\)$"
                        testBufferFileNameVersion)
      (my-xhtml-extras))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Mac Finder专用！！
;; 别的平台必须屏蔽！！
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; To load at the start up
(require 'reveal-in-finder)
;; If you want to configure a keybinding (e.g., C-c z), add the following
(global-set-key (kbd "C-S-o") 'reveal-in-finder) ;原来C-x o是切换窗口的


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; helm-mode
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; [Facultative] Only if you have installed async.
;; (add-to-list 'load-path "~/temConfig/TempEmacs.d/emacs-async")
;;      (when (require 'dired-aux)
;;        (require 'dired-async))

;; (add-to-list 'load-path "~/temConfig/TempEmacs.d/helm")
;; (require 'helm-config)
;; (helm-mode 1)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; yasnippet
;; 话说重新安装之后可以直接用TAB实现完成了
;; 需要注意的是出现报错 
;; [yas] Reloaded everything (snippets will load just-in-time)... (some errors, check *Messages*).
;; 我们可以查看 Messages，是yas-snippet-dirs加载出错了，我们是用el-get安装的 yasnippet 的，从而对应的
;; snippets是在~/.emacs.d/el-get/yasnippet/snippets目录。从而 ~/.emacs.d/snippets目录是不存在的。
;; 打开 yasnippet.elc 搜索对应的替换为正确的就可以了
;; (yas-global-mode t)
;; (global-set-key (kbd "C-?") 'yas/expand)
;; (setq ac-source-yasnippet nil)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; gtags
;; ggtags
;; 这个需要安装GNU GLOBAL
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq load-path (cons "/usr/local/share/gtags" load-path));gtags.el load-path
(autoload 'gtags-mode "gtags" "" t);gtags-mode is true
(setq c-mode-hook
      '(lambda ()
     (gtags-mode 1)));get into gtags-mode whenever you get into c-mode

(global-set-key (kbd "<f9>") 'ggtags-mode) ;命名Buffer，多在开多个shell的时候使用


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; rtags
;; 还是不知所以然。。。
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; (require 'rtags)                        ;rtags

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; ggtags
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'c-mode-common-hook
          (lambda ()
            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
              (ggtags-mode 1))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 高亮当前行
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 ;; '(hl-line ((t (:inherit t :background "gray13")))))
 ;; 这个是原有的风格选中的颜色，现在设置为高亮行的颜色
 '(hl-line ((t (:inherit t :background "#3E3D31")))))

;; 设置选中的颜色
(set-face-attribute 'region nil :background "#9932cc")
;; (set-face-attribute 'region nil :background "#3E3D31")


(require 'taotao-hydra)
;; (require 'taotao-fullscreen)

(require 'taotao-test01)
(require 'taotao-test02)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Unity相关的C#相关
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'csharp-mode-hook 'omnisharp-mode)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; dash
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(global-set-key (kbd "C-`") 'dash-at-point) 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 做实验用的taotao-mini-init
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'taotao-mini-init)
