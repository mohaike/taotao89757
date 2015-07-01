;; 代码跳转策略
;; 不过貌似效率没有Xcode那么高就是，额，我是这么感觉的就是,不过养猫嘛，终会慢慢成长的
;; 下面的这个是GNU GLOBAL也就是GNU下面的类似的代码分析器之类的，用于搜索相关的函数出处
;; 以及定义
;; Mac 下的话，我没有试过，应该可以吧
;; 具体可以看[[http://www.gnu.org/software/global/download.html][这里]]
;; [[http://blog.kentarok.org/entry/2012/03/23/010652][还有]]
;; 反正目标就是安装上它就是
;; 话说我终于弄好了，原来的版本太低结果emacs老是提示什么错误，
;; 自己编译安装上去就好
;; 安装的代码像这个样子就好(话说原来的版本的使用的是exuberant-ctags,这个我没有安装不过貌似也是用来代码补全的)
;; 完美主义作祟 这个是链接要的自己去看
;; http://easwy.com/blog/archives/exuberant-ctags-chinese-manual/
;; http://www.emacswiki.org/emacs/anything-gtags.el
;; http://ctags.sourceforge.net/

;; 话说我用的GNU GLOBAL的ggtags就不要那个了吧，反正两只表就不知道时间的故事我有不是第一次读
;; ./configure --prefix=/usr
;; make && make install
;; 看这里https://github.com/leoliu/ggtags#install-global-and-plugins
;; 也就是直接M-x ==> list-package ==> 搜索ggtags 安装
;; GNU GLOBAL
;; (setq load-path (cons "/opt/local/bin" load-path))
;; (autoload 'gtags-mode "gtags" "" t)
;; (setq c-mode-hook
;;           '(lambda ()
;;               (gtags-mode 1)
;;       ))
;; 现在在Mac上试过了至于global的安装可以看[[https://github.com/leoliu/ggtags/wiki/Install-Global-with-support-for-exuberant-ctags][这里]]
;; 也就是第二个用Homebrew安装，至于Homebrew的安装可以看[[http://brew.sh/][这里]]
;; Mac专用 添加环境变量，有个很诡异的原因就是emacs识别不出原有的环境变量
(setenv "GLOBAL_HOME" "/opt/local")
(setenv "PATH" (concat (getenv "PATH") ":" (getenv "GLOBAL_HOME") "/bin"))
;; BTW(By The Way)Mac上还真是是非多不管怎么样子Mac上面识别不出nage环境变量，实在是让人头痛
;; 就算是添加上了环境变量，之后终端gtags之后，第一次打开一个cpp文件也还是会抛出警告
;; Error: (file-error "Searching for program" "No such file or directory" "global") [3 times]
;; 不过也只会出现一下就会消失了，也就是只要移动下光标就没掉了.
;; 不过确实诡异的说，不过不影响使用就是，要学会等待，说不定什么时候就遇见解决方法了

;; WARNING!!! ggtags,这个是通过M-x list-package ==> ggtags ==> install 因为这个是elpa 自动生成的所以可能会有错误
;; (add-hook 'c-mode-common-hook
;;           (lambda ()
;;             (when (derived-mode-p 'c-mode 'c++-mode 'java-mode)
;;               (ggtags-mode 1))))


;; 5号插件 auto-complete-clang
;; 这个就更加强大(ง •̀_•́)ง
;; 可以语法分析补全代码
;; 利用clang语法分析，自动代码补全
;; 所以这个在mac上面的话要重新看看
;; 下面一大堆的地址可以用这个获取
;; $ echo "" | g++ -v -x c++ -E -  
;; 具体的可以看这里http://blog.csdn.net/cherylnatsu/article/details/7670445

;; 话说在Mac不是很好用。先注掉试试看
;; (add-to-list 'load-path "~/.emacs.d/")
;; (require 'auto-complete-clang)
;; (setq ac-clang-auto-save t)
;; ;; (setq ac-auto-start t)
;; (setq ac-quick-help-delay 0.06)
;; ;; (ac-set-trigger-key "TAB")
;; ;; (define-key ac-mode-map  [(control tab)] 'auto-complete)
;; (defun my-ac-config ()
;;   (setq ac-clang-flags
;;         (mapcar(lambda (item)(concat "-I" item))
;;                (split-string
;;                 "
;;  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../include/c++/v1
;;  /usr/local/include
;;  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/../lib/clang/6.0/include
;;  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/include
;;  /usr/include
;;  /System/Library/Frameworks
;;  /Library/Frameworks
;; 		")))
;;   (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
;;   (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;;   ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;;   (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
;;   (add-hook 'css-mode-hook 'ac-css-mode-setup)
;;   (add-hook 'auto-complete-mode-hook 'ac-common-setup)
;;   (global-auto-complete-mode t))
;; (defun my-ac-cc-mode-setup ()
;;   (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
;; (add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)
;; ;; ac-source-gtags
;; (my-ac-config)
;; -----------------------------------------------------END------------------------------------------------------------

