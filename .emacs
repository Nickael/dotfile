;;; packages --- Summary
;;; commentary: Thanks for using this dotfile
;;; code:

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;;; powerline plugin install

(unless (package-installed-p 'powerline)
  (package-refresh-contents)
  (package-install 'powerline))

;;; hlinum plugin install for line number

(unless (package-installed-p 'hlinum )
  (package-refresh-contents)
  (package-install 'hlinum))

;;; autopair plugin install

(unless (package-installed-p 'autopair)
  (package-refresh-contents)
  (package-install 'autopair))

(unless (package-installed-p 'paredit)
  (package-refresh-contents)
  (package-install 'paredit))

;;; electric operator plugin install

(unless (package-installed-p 'electric-operator)
  (package-refresh-contents)
  (package-install 'electric-operator))

(unless (package-installed-p 'whitespace )
  (package-refresh-contents)
  (package-install 'whitespace ))

(unless (package-installed-p 'fill-column-indicator )
  (package-refresh-contents)
  (package-install 'fill-column-indicator ))

;;; autocomplete plugin install

(unless (package-installed-p 'auto-complete )
  (package-refresh-contents)
  (package-install 'auto-complete ))

(unless (package-installed-p 'yasnippet)
  (package-refresh-contents)
  (package-install 'yasnippet))

(unless (package-installed-p 'company)
  (package-refresh-contents)
  (package-install 'company))

;;; c/c++ plugin install

(unless (package-installed-p 'ac-c-headers)
  (package-refresh-contents)
  (package-install 'ac-c-headers))

(unless (package-installed-p 'auto-complete-c-headers)
  (package-refresh-contents)
  (package-install 'auto-complete-c-headers))

(unless (package-installed-p 'flymake-cppcheck)
  (package-refresh-contents)
  (package-install 'flymake-cppcheck))

(unless (package-installed-p 'flymake-cppcheck)
  (package-refresh-contents)
  (package-install 'flymake-cppcheck))

(unless (package-installed-p 'flymake-google-cpplint)
  (package-refresh-contents)
  (package-install 'flymake-google-cpplint))

(unless (package-installed-p 'flymake-cursor)
  (package-refresh-contents)
  (package-install 'flymake-cursor))

;;; JavaScript plugin install

(unless (package-installed-p 'js2-mode)
  (package-refresh-contents)
  (package-install 'js2-mode))

(unless (package-installed-p 'ac-js2)
  (package-refresh-contents)
  (package-install 'ac-js2))

(unless (package-installed-p 'js3-mode)
  (package-refresh-contents)
  (package-install 'js3-mode))

(unless (package-installed-p 'flymake-jslint)
  (package-refresh-contents)
  (package-install 'flymake-jslint))

;;; php plugin install

(unless (package-installed-p 'flymake-php)
  (package-refresh-contents)
  (package-install 'flymake-php))

(unless (package-installed-p 'ac-php )
  (package-refresh-contents)
  (package-install 'ac-php ))

(unless (package-installed-p 'php-mode)
  (package-refresh-contents)
  (package-install 'php-mode))

(unless (package-installed-p 'flymake-phpcs)
  (package-refresh-contents)
  (package-install 'flymake-phpcs))
;;; shell autocomplete

(unless (package-installed-p 'company-shell)
  (package-refresh-contents)
  (package-install 'company-shell))

;;; web mode

(unless (package-installed-p 'web-mode)
  (package-refresh-contents)
  (package-install 'web-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(autopair-global-mode t)
 '(column-number-mode t)
 '(comment-auto-fill-only-comments t)
 '(comment-multi-line t)
 '(compose-mail-user-agent-warnings nil)
 '(custom-enabled-themes (quote (misterioso)))
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-mode t)
 '(global-whitespace-mode nil)
 '(js3-auto-indent-p t)
 '(js3-boring-indentation t)
 '(js3-consistent-level-indent-inner-bracket t)
 '(js3-curly-indent-offset 2)
 '(js3-enter-indents-newline t)
 '(js3-expr-indent-offset 2)
 '(js3-highlight-level 3)
 '(js3-indent-dots t)
 '(js3-indent-on-enter-key t)
 '(js3-indent-tabs-mode t)
 '(js3-lazy-commas t)
 '(js3-lazy-dots t)
 '(js3-lazy-operators t)
 '(js3-paren-indent-offset 2)
 '(js3-square-indent-offset 2)
 '(line-number-display-limit nil)
 '(size-indication-mode t)
 '(visible-bell t)
 '(whitespace-global-modes t)
 '(whitespace-hspace-regexp "\\\\(\\xA0+$\\\\)")
 '(word-wrap t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;
;;; custome header for school ETNA
;;;
(load-file "~/.emacs.d/std_comment.el")

;;;
;;; powerline mode
;;;

(require 'powerline)
(powerline-default-theme)
(powerline-raw mode-line-mule-info nil 'l)

;;;
;;; enabling electric operator
;;;

(require 'electric-operator)
(add-hook 'c-mode-hook #'electric-operator-mode)
(add-hook 'c++-mode-hook #'electric-operator-mode)
(add-hook 'js-mode-hook #'electric-operator-mode)
(add-hook 'php-mode-hook #'electric-operator-mode)
(add-hook 'css-mode-hook #'electric-operator-mode)

;;;
;;; show and delete trailing whitespace
;;;

(require 'whitespace)
(global-whitespace-mode 1)
(defun tf-toggle-show-trailing-whitespace ()
  "Toggle show-trailing-whitespace between t and nil"
  (interactive)
  (setq show-trailing-whitespace (not show-trailing-whitespace)))
(setq whitespace-display-mappings
      ;; all numbers are Unicode codepoint in decimal. try (insert-char 182 ) to see it
      '(
        (space-mark 32 [183] [46])		; 32 SPACE, 183 MIDDLE DOT 「·」, 46 FULL STOP 「.」
        (newline-mark 10 [182 10])		; 10 LINE FEED
        (tab-mark 9 [187 9] [9655 9] [92 9])	; 9 TAB, 9655 WHITE RIGHT-POINTING TRIANGLE 「▷」
        ))
(setq whitespace-style '(face tabs trailing tab-mark))
(set-face-attribute 'whitespace-tab nil
                    :foreground "#00a8a8"
                    :weight 'bold)
(set-face-attribute 'whitespace-trailing nil
                    :foreground "#183bc8"
                    :weight 'normal)
(add-hook 'prog-mode-hook 'whitespace-mode)

;;;
;;; delete trailing white spaces
;;;

(add-hook 'before-save-hook 'delete-trailing-whitespace)

;;;
;;; show parenthesis pairs
;;;

(require 'fill-column-indicator)

(show-paren-mode 1)										; enable global show parenthesis
(setq show-paren-style 'expression)
(defconst elisp-directory (expand-file-name "~/.elisp/"))
(add-to-list 'load-path elisp-directory)


;;;
;;; autocomplete for all languages
;;;

(require 'auto-complete)
(require 'auto-complete-config)
(require 'yasnippet)
(require 'company)
(ac-config-default)
(yas-global-mode 1)
;(add-hook 'after-init-hook 'global-company-mode)
;;;
;;; ac-headers autocomplete
;;;

(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)

  (add-to-list 'ac-sources 'ac-source-c-headers)
  (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-linux-gnu/4.9/include"))	; make sure you had already install gcc
(add-hook 'c++-mode-hook 'my:ac-c-header-init)							; then enter in your cli 'gcc -xc++ -E -v -'
(add-hook 'c-mode-hook 'my:ac-c-header-init)							; then paste the values of your headers location inside the double quote

;;;
;;; linum - enable line number
;;;

(global-linum-mode t)
(setq linum-format "%4d  \u2502  \u2502 ")

;;;
;;; flymake c cpp linter
;;;

(defun my:flymake-google-init ()
  (require 'flymake-google-cpplint)

  (custom-set-variables
   '(flymake-google-cpplint-command "/usr/local/bin/cpplint"))					; make sure you installed the python pip packages manager
    (flymake-google-cpplint-load)								; install cpplint 'sudo pip install --global cpplint'
  )												; then locate the installation folder 'which cpplint'
(add-hook 'c-mode-hook 'my:flymake-google-init)						; then past the location folder inside the "double quotes"
(add-hook 'c++-mode-hook 'my:flymake-google-init)

;(require 'google-c-style)
;(add-hook 'c-mode-common-hook 'google-set-c-style)
;(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;;; white space again

;;; php autocomplete

(require 'cl)
(require 'php-mode)
(add-hook 'php-mode-hook
          '(lambda ()
             (auto-complete-mode t)
             (require 'ac-php)
             (setq ac-sources  '(ac-source-php ) )
             (yas-global-mode 1)
             (define-key php-mode-map  (kbd "C-]") 'ac-php-find-symbol-at-point)		; goto define
             (define-key php-mode-map  (kbd "C-t") 'ac-php-location-stack-back   )		; go back
             ))
;;;
;;; php lint
;;;

(require 'flymake-php)
(require 'flymake-phpcs)
(require 'flymake-easy)
(add-hook 'php-mode-hook 'flymake-php-load)
(add-hook 'php-mode-hook 'flymake-phpcs-load)
(custom-set-variables
  '(flymake-phpcs-standard "PSR2"))

;;;
;;; JavaScript autocomplete
;;;

(require 'js2-mode)
(require 'js3-mode)
(require 'ac-js2)

(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq ac-js2-evaluate-calls t)


(autoload 'js3-mode "js3-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js3-mode))

;;; JavaScript linter

(require 'flymake-jslint)									; before using this make sure you install NodeJS and NPM package manager
(add-hook 'js-mode-hook 'flymake-jslint-load)							; then install jslint globaly using 'sudo npm install --globall jslint

;;;
;;; shell autocomplete
;;;

(require 'company)
(require 'company-shell)

(add-to-list 'company-backends 'company-shell)
(add-to-list 'company-backends '((company-shell company-fish-shell)))

;;;
;;; web mode for emacs
;;;

(require 'web-mode)

(add-hook 'web-mode-hook (lambda ()
			   (set (make-local-variable 'company-backends) '(company-web-html))
			   (company-mode t)))

(setq company-tooltip-align-annotations 't)
(setq company-idle-delay .3)
(custom-set-faces
 '(company-preview
   ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common
   ((t (:inherit company-preview))))
 '(company-tooltip
   ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-selection
   ((t (:background "steelblue" :foreground "white"))))
 '(company-tooltip-common
   ((((type x)) (:inherit company-tooltip :weight bold))
    (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection
   ((((type x)) (:inherit company-tooltip-selection :weight bold))
    (t (:inherit company-tooltip-selection)))))

;;; emacs ends here
