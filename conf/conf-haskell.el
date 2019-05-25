(provide 'conf-haskell)
(define-key evil-normal-state-map (kbd "SPC m g") 'intero-goto-definition)
(define-key evil-normal-state-map (kbd "SPC m R") 'intero-restart)
(define-key evil-normal-state-map (kbd "SPC m r r") 'intero-repl)
(define-key evil-visual-state-map (kbd "SPC m r s") 'intero-repl-eval-region)
(define-key evil-normal-state-map (kbd "SPC m r l") 'intero-repl-load)
(define-key evil-normal-state-map (kbd "SPC m a s") 'intero-apply-suggestions)
(define-key evil-insert-state-map (kbd "C-SPC") 'intero-company)

(defun haskell-setup ()
    (custom-set-variables
    ;; Customization related to indentation.
    '(haskell-indentation-layout-offset 4)
    '(haskell-indentation-starter-offset 4)
    '(haskell-indentation-left-offset 4)
    '(haskell-indentation-where-pre-offset 2)
    '(haskell-indentation-where-post-offset 2)
    ))
