;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (arx-or arx-and define-arx) "ample-regexps/ample-regexps"
;;;;;;  "ample-regexps/ample-regexps.el" (21652 10577 0 0))
;;; Generated autoloads from ample-regexps/ample-regexps.el

(autoload 'define-arx "ample-regexps/ample-regexps" "\
Generate a custom rx-like macro under name MACRO.

See `rx' for how the generated macro can be invoked.

FORM-DEFS is a list of custom s-exp definitions to create whose
elements have the form (SYM DEF), where DEF is one of
the following:

- \"LITERAL\" -- create a matcher to match a string literally

- (regexp \"LITERAL\") -- create a match given a regexp

- SYMBOL -- create an alias for a symbol either defined earlier
  on the list or provided by `rx'

- (SUBFORM ...) -- create an alias for an application of s-exp
  subform either defined earlier on the list or provided by `rx'

- (:func #'FORM-FUNC ...) -- create an s-exp definition

The most interesting here is the last variant.  When a
corresponding rx form will be encountered, FORM-FUNC will be
called with all elements of that form as arguments (with the
first one being the form symbol itself).  FORM-FUNC must then
return a valid s-exp or a properly grouped plain regexp.

Another keywords that are recognized in the plist are:
- :min-args -- minimum number of arguments for that form (default nil)
- :max-args -- minimum number of arguments for that form (default nil)
- :predicate -- if given, all rx form arguments must satisfy it

\(fn MACRO FORM-DEFS)" nil t)

(autoload 'arx-and "ample-regexps/ample-regexps" "\
Generate an expression to match a sequence of FORMS.

\(fn FORMS)" nil nil)

(autoload 'arx-or "ample-regexps/ample-regexps" "\
Generate an expression to match one of FORMS.

\(fn FORMS)" nil nil)

;;;***

;;;### (autoloads (anzu-replace-at-cursor-thing anzu-query-replace-regexp
;;;;;;  anzu-query-replace anzu-query-replace-at-cursor-thing anzu-query-replace-at-cursor
;;;;;;  global-anzu-mode anzu-mode) "anzu/anzu" "anzu/anzu.el" (21650
;;;;;;  57668 0 0))
;;; Generated autoloads from anzu/anzu.el

(autoload 'anzu-mode "anzu/anzu" "\
minor-mode which display search information in mode-line.

\(fn &optional ARG)" t nil)

(defvar global-anzu-mode nil "\
Non-nil if Global-Anzu mode is enabled.
See the command `global-anzu-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-anzu-mode'.")

(custom-autoload 'global-anzu-mode "anzu/anzu" nil)

(autoload 'global-anzu-mode "anzu/anzu" "\
Toggle Anzu mode in all buffers.
With prefix ARG, enable Global-Anzu mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Anzu mode is enabled in all buffers where
`anzu--turn-on' would do it.
See `anzu-mode' for more information on Anzu mode.

\(fn &optional ARG)" t nil)

(autoload 'anzu-query-replace-at-cursor "anzu/anzu" "\


\(fn)" t nil)

(autoload 'anzu-query-replace-at-cursor-thing "anzu/anzu" "\


\(fn)" t nil)

(autoload 'anzu-query-replace "anzu/anzu" "\


\(fn ARG)" t nil)

(autoload 'anzu-query-replace-regexp "anzu/anzu" "\


\(fn ARG)" t nil)

(autoload 'anzu-replace-at-cursor-thing "anzu/anzu" "\


\(fn)" t nil)

;;;***

;;;### (autoloads (autopair-global-mode autopair-mode) "autopair/autopair"
;;;;;;  "autopair/autopair.el" (21650 56975 0 0))
;;; Generated autoloads from autopair/autopair.el

(autoload 'autopair-mode "autopair/autopair" "\
Automagically pair braces and quotes like in TextMate.

\(fn &optional ARG)" t nil)

(defvar autopair-global-mode nil "\
Non-nil if Autopair-Global mode is enabled.
See the command `autopair-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `autopair-global-mode'.")

(custom-autoload 'autopair-global-mode "autopair/autopair" nil)

(autoload 'autopair-global-mode "autopair/autopair" "\
Toggle Autopair mode in all buffers.
With prefix ARG, enable Autopair-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Autopair mode is enabled in all buffers where
`autopair-on' would do it.
See `autopair-mode' for more information on Autopair mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (browse-kill-ring browse-kill-ring-default-keybindings)
;;;;;;  "browse-kill-ring/browse-kill-ring" "browse-kill-ring/browse-kill-ring.el"
;;;;;;  (21651 65371 0 0))
;;; Generated autoloads from browse-kill-ring/browse-kill-ring.el

(autoload 'browse-kill-ring-default-keybindings "browse-kill-ring/browse-kill-ring" "\
Set up M-y (`yank-pop') so that it can invoke `browse-kill-ring'.
Normally, if M-y was not preceeded by C-y, then it has no useful
behavior.  This function sets things up so that M-y will invoke
`browse-kill-ring'.

\(fn)" t nil)

(autoload 'browse-kill-ring "browse-kill-ring/browse-kill-ring" "\
Display items in the `kill-ring' in another buffer.

\(fn)" t nil)

;;;***

;;;### (autoloads (color-theme-initialize color-theme-submit color-theme-install
;;;;;;  color-theme-compare color-theme-make-snapshot color-theme-analyze-defun
;;;;;;  color-theme-print color-theme-install-at-point-for-current-frame
;;;;;;  color-theme-install-at-mouse color-theme-describe color-theme-select)
;;;;;;  "color-theme/color-theme" "color-theme/color-theme.el" (17529
;;;;;;  41105 0 0))
;;; Generated autoloads from color-theme/color-theme.el

(autoload 'color-theme-select "color-theme/color-theme" "\
Displays a special buffer for selecting and installing a color theme.
With optional prefix ARG, this buffer will include color theme libraries
as well.  A color theme library is in itself not complete, it must be
used as part of another color theme to be useful.  Thus, color theme
libraries are mainly useful for color theme authors.

\(fn &optional ARG)" t nil)

(autoload 'color-theme-describe "color-theme/color-theme" "\
Describe color theme listed at point.
This shows the documentation of the value of text-property color-theme
at point.  The text-property color-theme should be a color theme
function.  See `color-themes'.

\(fn)" t nil)

(autoload 'color-theme-install-at-mouse "color-theme/color-theme" "\
Install color theme clicked upon using the mouse.
First argument EVENT is used to set point.  Then
`color-theme-install-at-point' is called.

\(fn EVENT)" t nil)

(autoload 'color-theme-install-at-point-for-current-frame "color-theme/color-theme" "\
Install color theme at point for current frame only.
Binds `color-theme-is-global' to nil and calls
`color-theme-install-at-point'.

\(fn)" t nil)

(autoload 'color-theme-print "color-theme/color-theme" "\
Print the current color theme function.

You can contribute this function to <URL:news:gnu.emacs.sources> or
paste it into your .emacs file and call it.  That should recreate all
the settings necessary for your color theme.

Example:

    (require 'color-theme)
    (defun my-color-theme ()
      \"Color theme by Alex Schroeder, created 2000-05-17.\"
      (interactive)
      (color-theme-install
       '(...
	 ...
	 ...)))
    (my-color-theme)

If you want to use a specific color theme function, you can call the
color theme function in your .emacs directly.

Example:

    (require 'color-theme)
    (color-theme-gnome2)

\(fn &optional BUF)" t nil)

(autoload 'color-theme-analyze-defun "color-theme/color-theme" "\
Once you have a color-theme printed, check for missing faces.
This is used by maintainers who receive a color-theme submission
and want to make sure it follows the guidelines by the color-theme
author.

\(fn)" t nil)

(autoload 'color-theme-make-snapshot "color-theme/color-theme" "\
Return the definition of the current color-theme.
The function returned will recreate the color-theme in use at the moment.

\(fn)" nil nil)

(autoload 'color-theme-compare "color-theme/color-theme" "\
Compare two color themes.
This will print the differences between installing THEME-A and
installing THEME-B.  Note that the order is important: If a face is
defined in THEME-A and not in THEME-B, then this will not show up as a
difference, because there is no reset before installing THEME-B.  If a
face is defined in THEME-B and not in THEME-A, then this will show up as
a difference.

\(fn THEME-A THEME-B)" t nil)

(autoload 'color-theme-install "color-theme/color-theme" "\
Install a color theme defined by frame parameters, variables and faces.

The theme is installed for all present and future frames; any missing
faces are created.  See `color-theme-install-faces'.

THEME is a color theme definition.  See below for more information.

If you want to install a color theme from your .emacs, use the output
generated by `color-theme-print'.  This produces color theme function
which you can copy to your .emacs.

A color theme definition is a list:
\([FUNCTION] FRAME-PARAMETERS VARIABLE-SETTINGS FACE-DEFINITIONS)

FUNCTION is the color theme function which called `color-theme-install'.
This is no longer used.  There was a time when this package supported
automatic factoring of color themes.  This has been abandoned.

FRAME-PARAMETERS is an alist of frame parameters.  These are installed
with `color-theme-install-frame-params'.  These are installed last such
that any changes to the default face can be changed by the frame
parameters.

VARIABLE-DEFINITIONS is an alist of variable settings.  These are
installed with `color-theme-install-variables'.

FACE-DEFINITIONS is an alist of face definitions.  These are installed
with `color-theme-install-faces'.

If `color-theme-is-cumulative' is nil, a color theme will undo face and
frame-parameter settings of previous color themes.

\(fn THEME)" nil nil)

(autoload 'color-theme-submit "color-theme/color-theme" "\
Submit your color-theme to the maintainer.

\(fn)" t nil)

(autoload 'color-theme-initialize "color-theme/color-theme" "\
Initialize the color theme package by loading color-theme-libraries.

\(fn)" t nil)

;;;***

;;;### (autoloads (global-company-mode company-mode) "company-mode/company"
;;;;;;  "company-mode/company.el" (21780 52549 0 0))
;;; Generated autoloads from company-mode/company.el

(autoload 'company-mode "company-mode/company" "\
\"complete anything\"; is an in-buffer completion framework.
Completion starts automatically, depending on the values
`company-idle-delay' and `company-minimum-prefix-length'.

Completion can be controlled with the commands:
`company-complete-common', `company-complete-selection', `company-complete',
`company-select-next', `company-select-previous'.  If these commands are
called before `company-idle-delay', completion will also start.

Completions can be searched with `company-search-candidates' or
`company-filter-candidates'.  These can be used while completion is
inactive, as well.

The completion data is retrieved using `company-backends' and displayed
using `company-frontends'.  If you want to start a specific back-end, call
it interactively or use `company-begin-backend'.

regular keymap (`company-mode-map'):

\\{company-mode-map}
keymap during active completions (`company-active-map'):

\\{company-active-map}

\(fn &optional ARG)" t nil)

(defvar global-company-mode nil "\
Non-nil if Global-Company mode is enabled.
See the command `global-company-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-company-mode'.")

(custom-autoload 'global-company-mode "company-mode/company" nil)

(autoload 'global-company-mode "company-mode/company" "\
Toggle Company mode in all buffers.
With prefix ARG, enable Global-Company mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Company mode is enabled in all buffers where
`company-mode-on' would do it.
See `company-mode' for more information on Company mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads (company-abbrev) "company-mode/company-abbrev"
;;;;;;  "company-mode/company-abbrev.el" (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-abbrev.el

(autoload 'company-abbrev "company-mode/company-abbrev" "\
`company-mode' completion back-end for abbrev.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-bbdb) "company-mode/company-bbdb" "company-mode/company-bbdb.el"
;;;;;;  (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-bbdb.el

(autoload 'company-bbdb "company-mode/company-bbdb" "\
`company-mode' completion back-end for BBDB.

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads (company-css) "company-mode/company-css" "company-mode/company-css.el"
;;;;;;  (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-css.el

(autoload 'company-css "company-mode/company-css" "\
`company-mode' completion back-end for `css-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-dabbrev) "company-mode/company-dabbrev"
;;;;;;  "company-mode/company-dabbrev.el" (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-dabbrev.el

(autoload 'company-dabbrev "company-mode/company-dabbrev" "\
dabbrev-like `company-mode' completion back-end.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-dabbrev-code) "company-mode/company-dabbrev-code"
;;;;;;  "company-mode/company-dabbrev-code.el" (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-dabbrev-code.el

(autoload 'company-dabbrev-code "company-mode/company-dabbrev-code" "\
dabbrev-like `company-mode' back-end for code.
The back-end looks for all symbols in the current buffer that aren't in
comments or strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-elisp) "company-mode/company-elisp" "company-mode/company-elisp.el"
;;;;;;  (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-elisp.el

(autoload 'company-elisp "company-mode/company-elisp" "\
`company-mode' completion back-end for Emacs Lisp.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-etags) "company-mode/company-etags" "company-mode/company-etags.el"
;;;;;;  (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-etags.el

(autoload 'company-etags "company-mode/company-etags" "\
`company-mode' completion back-end for etags.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-files) "company-mode/company-files" "company-mode/company-files.el"
;;;;;;  (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-files.el

(autoload 'company-files "company-mode/company-files" "\
`company-mode' completion back-end existing file names.
Completions works for proper absolute and relative files paths.
File paths with spaces are only supported inside strings.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-gtags) "company-mode/company-gtags" "company-mode/company-gtags.el"
;;;;;;  (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-gtags.el

(autoload 'company-gtags "company-mode/company-gtags" "\
`company-mode' completion back-end for GNU Global.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-ispell) "company-mode/company-ispell"
;;;;;;  "company-mode/company-ispell.el" (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-ispell.el

(autoload 'company-ispell "company-mode/company-ispell" "\
`company-mode' completion back-end using Ispell.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-keywords) "company-mode/company-keywords"
;;;;;;  "company-mode/company-keywords.el" (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-keywords.el

(autoload 'company-keywords "company-mode/company-keywords" "\
`company-mode' back-end for programming language keywords.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-nxml) "company-mode/company-nxml" "company-mode/company-nxml.el"
;;;;;;  (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-nxml.el

(autoload 'company-nxml "company-mode/company-nxml" "\
`company-mode' completion back-end for `nxml-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-oddmuse) "company-mode/company-oddmuse"
;;;;;;  "company-mode/company-oddmuse.el" (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-oddmuse.el

(autoload 'company-oddmuse "company-mode/company-oddmuse" "\
`company-mode' completion back-end for `oddmuse-mode'.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-semantic) "company-mode/company-semantic"
;;;;;;  "company-mode/company-semantic.el" (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-semantic.el

(autoload 'company-semantic "company-mode/company-semantic" "\
`company-mode' completion back-end using CEDET Semantic.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-tempo) "company-mode/company-tempo" "company-mode/company-tempo.el"
;;;;;;  (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-tempo.el

(autoload 'company-tempo "company-mode/company-tempo" "\
`company-mode' completion back-end for tempo.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-xcode) "company-mode/company-xcode" "company-mode/company-xcode.el"
;;;;;;  (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-xcode.el

(autoload 'company-xcode "company-mode/company-xcode" "\
`company-mode' completion back-end for Xcode projects.

\(fn COMMAND &optional ARG &rest IGNORED)" t nil)

;;;***

;;;### (autoloads (company-yasnippet) "company-mode/company-yasnippet"
;;;;;;  "company-mode/company-yasnippet.el" (21780 52549 0 0))
;;; Generated autoloads from company-mode/company-yasnippet.el

(autoload 'company-yasnippet "company-mode/company-yasnippet" "\
`company-mode' back-end for `yasnippet'.

This back-end should be used with care, because as long as there are
snippets defined for the current major mode, this back-end will always
shadow back-ends that come after it.  Recommended usages:

* In a buffer-local value of `company-backends', grouped with a back-end or
  several that provide actual text completions.

  (add-hook 'js-mode-hook
            (lambda ()
              (set (make-local-variable 'company-backends)
                   '((company-dabbrev-code company-yasnippet)))))

* After keyword `:with', grouped with other back-ends.

  (push '(company-semantic :with company-yasnippet) company-backends)

* Not in `company-backends', just bound to a key.

  (global-set-key (kbd \"C-c y\") 'company-yasnippet)

\(fn COMMAND &optional ARG &rest IGNORE)" t nil)

;;;***

;;;### (autoloads nil "csharp-mode/csharp-analysis" "csharp-mode/csharp-analysis.el"
;;;;;;  (21853 42871 0 0))
;;; Generated autoloads from csharp-mode/csharp-analysis.el

(autoload 'csharp-analysis-mode "csharp-mode/csharp-analysis" "\
A minor mode to do on-the-fly c# source code parsing and analysis.

When this function is called interactively, it toggles the minor
mode.

With arg, turn csharp-analysis mode on if and only if arg
is positive.

When this mode is on, emacs periodically analyzes the current
buffer and stores a representation of the abstract syntax
tree (AST) for the C# source code.  This AST is then used to
facilitate smart code completion, something like emacs'
autocomplete function, but smarter.  See
`cscomp-complete-at-point'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "csharp-mode/csharp-mode" "csharp-mode/csharp-mode.el"
;;;;;;  (21853 42871 0 0))
;;; Generated autoloads from csharp-mode/csharp-mode.el

(defvar csharp-mode-hook nil "\
*Hook called by `csharp-mode'.")

(custom-autoload 'csharp-mode-hook "csharp-mode/csharp-mode" t)

(defvar csharp-want-flymake-fixup t "\
*Whether to enable the builtin C# support for flymake. This is meaningful
only if flymake is loaded.")

(custom-autoload 'csharp-want-flymake-fixup "csharp-mode/csharp-mode" t)

(defvar csharp-want-yasnippet-fixup t "\
*Whether to enable the builtin C# support for yasnippet. This is meaningful
only if flymake is loaded.")

(custom-autoload 'csharp-want-yasnippet-fixup "csharp-mode/csharp-mode" t)

(defvar csharp-want-imenu t "\
*Whether to generate a buffer index via imenu for C# buffers.")

(custom-autoload 'csharp-want-imenu "csharp-mode/csharp-mode" t)

(defvar csharp-make-tool "nmake.exe" "\
*The make tool to use. Defaults to nmake, found on path. Specify
a full path or alternative program name, to tell csharp-mode to use
a different make tool in compile commands.

See also, `csharp-msbuild-tool'.

")

(custom-autoload 'csharp-make-tool "csharp-mode/csharp-mode" t)

(defvar csharp-msbuild-tool "msbuild.exe" "\
*The tool to use to build .csproj files. Defaults to msbuild, found on
path. Specify a full path or alternative program name, to tell csharp-mode
to use a different make tool in compile commands.

See also, `csharp-make-tool'.

")

(custom-autoload 'csharp-msbuild-tool "csharp-mode/csharp-mode" t)

(defvar csharp-cmd-line-limit 28 "\
The number of lines at the top of the file to look in, to find
the command that csharp-mode will use to compile the current
buffer, or the command \"stub\" that csharp-mode will use to
check the syntax of the current buffer via flymake.

If the value of this variable is zero, then csharp-mode looks
everywhere in the file.  If the value is positive, then only in
the first N lines. If negative, then only in the final N lines.

The line should appear in a comment inside the C# buffer.


Compile
--------

In the case of compile, the compile command must be prefixed with
\"compile:\".  For example,

 // compile: csc.exe /r:Hallo.dll Arfie.cs


This command will be suggested as the compile command when the
user invokes `compile' for the first time.


Flymake
--------

In the case of flymake, the command \"stub\" string must be
prefixed with \"flymake:\".  For example,

 // flymake: DOTNETDIRcsc.exe /target:netmodule /r:foo.dll @@FILE@@

In the case of flymake, the string should NOT include the name of
the file for the buffer being checked. Instead, use the token
@@FILE@@ .  csharp-mode will replace this token with the name of
the source file to compile, before passing the command to flymake
to run it.

If for some reason the command is invalid or illegal, flymake
will report an error and disable itself.

It might be handy to run fxcop, for example, via flymake.

 // flymake: fxcopcmd.exe /c  /f:MyLibrary.dll



In all cases
------------

Be sure to specify the proper path for your csc.exe, whatever
version that might be, or no path if you want to use the system
PATH search.

If the buffer depends on external libraries, then you will want
to include /R arguments to that csc.exe command.

To be clear, this variable sets the number of lines to search for
the command.  This cariable is an integer.

If the marker string (either \"compile:\" or \"flymake:\"
is present in the given set of lines, csharp-mode will take
anything after the marker string as the command to run.

")

(custom-autoload 'csharp-cmd-line-limit "csharp-mode/csharp-mode" t)

(add-to-list 'auto-mode-alist '("\\.cs$" . csharp-mode))

(autoload 'csharp-mode "csharp-mode/csharp-mode" "\
Major mode for editing C# code. This mode is derived from CC Mode to
support C#.

Normally, you'd want to autoload this mode by setting `auto-mode-alist' with
an entry for csharp, in your .emacs file:

   (autoload 'csharp-mode \"csharp-mode\" \"Major mode for editing C# code.\" t)
   (setq auto-mode-alist
      (append '((\"\\.cs$\" . csharp-mode)) auto-mode-alist))

The mode provides fontification and indent for C# syntax, as well
as some other handy features.

At mode startup, there are two interesting hooks that run:
`c-mode-common-hook' is run with no args, then `csharp-mode-hook' is run after
that, also with no args.

To run your own logic after csharp-mode starts, do this:

  (defun my-csharp-mode-fn ()
    \"my function that runs when csharp-mode is initialized for a buffer.\"
    (turn-on-font-lock)
    (turn-on-auto-revert-mode) ;; helpful when also using Visual Studio
    (setq indent-tabs-mode nil) ;; tabs are evil
    (flymake-mode 1)
    (yas/minor-mode-on)
    (require 'rfringe)  ;; handy for flymake
    (require 'flymake-cursor) ;; also handy for flymake
    ....your own code here...
  )
  (add-hook  'csharp-mode-hook 'my-csharp-mode-fn t)


The function above is just a suggestion.


Compile integration:
========================

csharp-mode binds the function `csharp-invoke-compile-interactively' to
\"\" .  This function attempts to intellgently guess the format of the
compile command to use for a buffer.  It looks in the comments at the head of
the buffer for a line that begins with compile: .  For exammple:

  // compile: csc.exe /t:library /r:Mylib.dll Foo.cs

If csharp-mode finds a line like this, it will suggest the text that follows
as the compilation command when running `compile' for the first time.  If such
a line is not found, csharp-mode falls back to a msbuild or nmake command.
See the documentation on `csharp-cmd-line-limit' for further information. If
you don't want this magic, then you can just run `compile' directly, rather
than `csharp-invoke-compile-interactively' .

This mode will also automatically add a symbol and regexp to the
`compilation-error-regexp-alist' and`compilation-error-regexp-alist-alist'
respectively, for Csc.exe error and warning messages. If you invoke `compile',
then `next-error' should work properly for error messages produced by csc.exe.


Flymake Integraiton
========================

You can use flymake with csharp mode to automatically check the syntax of your
csharp code, and highlight errors.  To do so, add a comment line like this to
each .cs file that you use flymake with:

   //  flymake: csc.exe /t:module /R:Foo.dll @@FILE@@

csharp-mode replaces special tokens in the command with different values:

  @@ORIG@@ - gets replaced with the original filename
  @@FILE@@ - gets replaced with the name of the temporary file
      created by flymake. This is usually what you want in place of the
      name of the file to be compiled.

See the documentation on `csharp-cmd-line-limit' for further information.

You may also want to run a syntax checker, like fxcop:

   //  flymake: fxcopcmd.exe /c /F:MyLibrary.dll

In this case you don't need either of the tokens described above.

If the module has no external dependencies, then you need not specify any
flymake command at all. csharp-mode will implicitly act as if you had
specified the command:

     // flymake: csc.exe /t:module /nologo @@FILE@@

It looks for the EXE on the path.  You can specify a full path if you like.


YASnippet and IMenu Integraiton
===============================

Check the menubar for menu entries for YASnippet and Imenu; the latter
is labelled \"Index\".

The Imenu index gets computed when the file is .cs first opened and loaded.
This may take a moment or two.  If you don't like this delay and don't
use imenu, you can turn this off with the variable `csharp-want-imenu'.



Key bindings:
\\{csharp-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (el-get el-get-self-checksum el-get-checksum el-get-make-recipes
;;;;;;  el-get-cd el-get-reinstall el-get-remove el-get-self-update
;;;;;;  el-get-update-packages-of-type el-get-update-all el-get-update
;;;;;;  el-get-install el-get-version) "el-get/el-get" "el-get/el-get.el"
;;;;;;  (21650 52504 0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads (el-get-list-packages) "el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" (21650 52504 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads (ggtags-try-complete-tag ggtags-build-imenu-index
;;;;;;  ggtags-mode ggtags-find-tag-dwim ggtags-find-project) "ggtags/ggtags"
;;;;;;  "ggtags/ggtags.el" (21757 15127 0 0))
;;; Generated autoloads from ggtags/ggtags.el

(autoload 'ggtags-find-project "ggtags/ggtags" "\


\(fn)" nil nil)

(autoload 'ggtags-find-tag-dwim "ggtags/ggtags" "\
Find NAME by context.
If point is at a definition tag, find references, and vice versa.
If point is at a line that matches `ggtags-include-pattern', find
the include file instead.

When called interactively with a prefix arg, always find
definition tags.

\(fn NAME &optional WHAT)" t nil)

(autoload 'ggtags-mode "ggtags/ggtags" "\
Toggle Ggtags mode on or off.
With a prefix argument ARG, enable Ggtags mode if ARG is
positive, and disable it otherwise.  If called from Lisp, enable
the mode if ARG is omitted or nil, and toggle it if ARG is `toggle'.
\\{ggtags-mode-map}

\(fn &optional ARG)" t nil)

(autoload 'ggtags-build-imenu-index "ggtags/ggtags" "\
A function suitable for `imenu-create-index-function'.

\(fn)" nil nil)

(autoload 'ggtags-try-complete-tag "ggtags/ggtags" "\
A function suitable for `hippie-expand-try-functions-list'.

\(fn OLD)" nil nil)

;;;***

;;;### (autoloads (git-reblame git-blame-mode) "git-emacs/git-blame"
;;;;;;  "git-emacs/git-blame.el" (21652 4546 0 0))
;;; Generated autoloads from git-emacs/git-blame.el

(autoload 'git-blame-mode "git-emacs/git-blame" "\
Toggle minor mode for displaying Git blame

With prefix ARG, turn the mode on if ARG is positive.

\(fn &optional ARG)" t nil)

(autoload 'git-reblame "git-emacs/git-blame" "\
Recalculate all blame information in the current buffer

\(fn)" t nil)

;;;***

;;;### (autoloads nil "lua-mode/lua-mode" "lua-mode/lua-mode.el"
;;;;;;  (21897 4931 0 0))
;;; Generated autoloads from lua-mode/lua-mode.el

(autoload 'lua-mode "lua-mode/lua-mode" "\
Major mode for editing Lua code.

\(fn)" t nil)

(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))

(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

;;;***

;;;### (autoloads nil "monokai-theme/monokai-theme" "monokai-theme/monokai-theme.el"
;;;;;;  (21803 29357 0 0))
;;; Generated autoloads from monokai-theme/monokai-theme.el

(when (and (boundp 'custom-theme-load-path) load-file-name) (add-to-list 'custom-theme-load-path (file-name-as-directory (file-name-directory load-file-name))))

;;;***

;;;### (autoloads (yas-global-mode yas-minor-mode) "yasnippet/yasnippet"
;;;;;;  "yasnippet/yasnippet.el" (21651 61730 0 0))
;;; Generated autoloads from yasnippet/yasnippet.el

(autoload 'yas-minor-mode "yasnippet/yasnippet" "\
Toggle YASnippet mode.

When YASnippet mode is enabled, `yas-expand', normally bound to
the TAB key, expands snippets of code depending on the major
mode.

With no argument, this command toggles the mode.
positive prefix argument turns on the mode.
Negative prefix argument turns off the mode.

Key bindings:
\\{yas-minor-mode-map}

\(fn &optional ARG)" t nil)

(defvar yas-global-mode nil "\
Non-nil if Yas-Global mode is enabled.
See the command `yas-global-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `yas-global-mode'.")

(custom-autoload 'yas-global-mode "yasnippet/yasnippet" nil)

(autoload 'yas-global-mode "yasnippet/yasnippet" "\
Toggle Yas minor mode in all buffers.
With prefix ARG, enable Yas-Global mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Yas minor mode is enabled in all buffers where
`yas-minor-mode-on' would do it.
See `yas-minor-mode' for more information on Yas minor mode.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil nil ("autopair/autopair-tests.el" "color-theme/color-theme-autoloads.el"
;;;;;;  "company-mode/company-capf.el" "company-mode/company-clang.el"
;;;;;;  "company-mode/company-cmake.el" "company-mode/company-eclim.el"
;;;;;;  "company-mode/company-template.el" "company-mode/company-tests.el"
;;;;;;  "csharp-mode/aspx-mode.el" "csharp-mode/cscomp-base.el" "csharp-mode/csharp-completion.el"
;;;;;;  "csharp-mode/csharp-shell.el" "csharp-mode/tfs.el" "el-get/el-get-autoloading.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "fold-dwim/fold-dwim.el"
;;;;;;  "git-emacs/git--test.el" "git-emacs/git-emacs-autoloads.el"
;;;;;;  "git-emacs/git-emacs.el" "git-emacs/git-global-keys.el" "git-emacs/git-log.el"
;;;;;;  "git-emacs/git-modeline.el" "git-emacs/git-status.el" "monokai-theme/monokai-theme-autoloads.el"
;;;;;;  "monokai-theme/monokai-theme-pkg.el" "yasnippet/yasnippet-debug.el"
;;;;;;  "yasnippet/yasnippet-tests.el") (21897 4932 40148 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
