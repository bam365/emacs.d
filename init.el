(add-to-list 'load-path "~/.emacs.d/conf/")

(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  ;; Comment/uncomment these two lines to enable/disable MELPA and MELPA Stable as desired
  (add-to-list 'package-archives (cons "melpa" (concat proto "://melpa.org/packages/")) t)
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  (when (< emacs-major-version 24)
    ;; For important compatibility libraries like cl-lib
    (add-to-list 'package-archives '("gnu" . (concat proto "://elpa.gnu.org/packages/")))))
(package-initialize)

(eval-when-compile (require 'use-package))

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

(set-default 'truncate-lines t)
(setq-default indent-tabs-mode nil)
(setq tab-width 4)
(defvaralias 'c-basic-offset 'tab-width)
(setq indent-line-function 'insert-tab)

(use-package ivy
  :config
  (ivy-mode 1))

(use-package counsel)

(use-package projectile)

(use-package neotree)

(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

(use-package tuareg
  :config
  (require 'conf-ocaml)
  (add-hook 'tuareg-mode-hook
	    (lambda()
	      (electric-indent-mode 0))))

(use-package flycheck)
(use-package flycheck-ocaml)

(use-package rainbow-delimiters)
(use-package smartparens)
(use-package yasnippet)
(use-package clj-refactor)

(use-package clojure-mode
  :ensure t
  :mode (("\\.clj\\'" . clojure-mode)
         ("\\.edn\\'" . clojure-mode))
  :init
  (add-hook 'clojure-mode-hook #'yas-minor-mode)         
  (add-hook 'clojure-mode-hook #'rainbow-delimiters-mode))

(use-package cider
  :ensure t
  :defer t
  :init (add-hook 'cider-mode-hook #'clj-refactor-mode)
  :diminish subword-mode
  :config
  (setq nrepl-log-messages t                  
        cider-repl-use-clojure-font-lock t    
        cider-prompt-save-file-on-load 'always-save
        cider-font-lock-dynamically '(macro core function var)
        nrepl-hide-special-buffers t            
        cider-overlays-use-font-lock t)         
  (cider-repl-toggle-pretty-printing))

(use-package evil
  :config
  (evil-mode 1)
  (require 'keys)
)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8a6f10b3269c42c351776ee32c7ee755472dee4ecdf2177dcbf64d5e02d1ab64" "ed2b5df51c3e1f99207074f8a80beeb61757ab18970e43d57dec34fe21af2433" "d411730c6ed8440b4a2b92948d997c4b71332acf9bb13b31e9445da16445fe43" default)))
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (smartparens rainbow-delimiters elscreen persp-mode elscreen-fr counsel-projectile counsel markdown-mode flycheck-ocaml flycheck tuareg use-package gruvbox-theme ivy evil))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;; ## added by OPAM user-setup for emacs / base ## 56ab50dc8996d2bb95e7856a6eddb17b ## you can edit, but keep this line
(use-package gruvbox
  :config
  (load-theme 'gruvbox))

(setq backup-directory-alist `(("." . "~/.saves")))
(setq backup-by-copying t)
(setq scroll-step 1)

(require 'opam-user-setup "~/.emacs.d/opam-user-setup.el")
;; ## end of OPAM user-setup addition for emacs / base ## keep this line
