(provide 'keys)

; Buffer stuff
(define-key evil-normal-state-map (kbd "SPC b b") 'evil-switch-to-windows-last-buffer)
(define-key evil-normal-state-map (kbd "SPC b l") 'ivy-switch-buffer)


; Window stuff
(define-key evil-normal-state-map (kbd "SPC s v") 'split-window-right)
(define-key evil-normal-state-map (kbd "SPC s h") 'split-window-below)
(define-key evil-normal-state-map (kbd "SPC w h") 'evil-window-left)
(define-key evil-normal-state-map (kbd "SPC w j") 'evil-window-down)
(define-key evil-normal-state-map (kbd "SPC w k") 'evil-window-up)
(define-key evil-normal-state-map (kbd "SPC w l") 'evil-window-right)

; Neotree stuff
(evil-define-key 'normal neotree-mode-map (kbd "TAB") 'neotree-enter)
(evil-define-key 'normal neotree-mode-map (kbd "SPC") 'neotree-quick-look)
(evil-define-key 'normal neotree-mode-map (kbd "q") 'neotree-hide)
(evil-define-key 'normal neotree-mode-map (kbd "RET") 'neotree-enter)

; Tab stuff
(define-key evil-normal-state-map (kbd "SPC g t") 'elscreen-create)
(define-key evil-normal-state-map (kbd "SPC g n") 'elscreen-next)
(define-key evil-normal-state-map (kbd "SPC g N") 'elscreen-previous)

; File stuff
(define-key evil-normal-state-map (kbd "SPC f t") 'neotree-toggle)
(define-key evil-normal-state-map (kbd "SPC f f") 'counsel-fzf)
(define-key evil-normal-state-map (kbd "SPC f p f") 'counsel-projectile-find-file)
(define-key evil-normal-state-map (kbd "SPC f o") 'counsel-find-file)

; Company
(define-key evil-insert-state-map (kbd "C-SPC") 'company-complete)
