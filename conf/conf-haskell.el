(provide 'conf-haskell)
(define-key evil-normal-state-map (kbd "SPC m g") 'intero-goto-definition)
(define-key evil-normal-state-map (kbd "SPC m R") 'intero-restart)
(define-key evil-normal-state-map (kbd "SPC m r r") 'intero-repl)
(define-key evil-visual-state-map (kbd "SPC m r s") 'intero-repl-eval-region)
(define-key evil-normal-state-map (kbd "SPC m r l") 'intero-repl-load)
(define-key evil-normal-state-map (kbd "SPC m a s") 'intero-apply-suggestions)
(define-key evil-normal-state-map (kbd "SPC m i d") 'hindent-reformat-decl)
(define-key evil-normal-state-map (kbd "SPC m i r") 'hindent-reformat-region)
(define-key evil-normal-state-map (kbd "SPC m i b") 'hindent-reformat-buffer)
(define-key evil-insert-state-map (kbd "C-SPC") 'intero-company)

(defun haskell-setup ()
  (custom-set-variables
   ;; Customization related to indentation.
   '(haskell-indentation-layout-offset 4)
   '(haskell-indentation-starter-offset 4)
   '(haskell-indentation-left-offset 4)
   '(haskell-indentation-where-pre-offset 2)
   '(haskell-indentation-where-post-offset 2))
  (make-local-variable 'tab-stop-list)
  (setq tab-stop-list (number-sequence 0 120 4))
  (setq indent-line-function 'tab-to-tab-stop)

                                        ; Backspace: delete spaces up until a tab stop
  (defvar my-offset 4 "My indentation offset. ")
  (defun backspace-whitespace-to-tab-stop ()
    "Delete whitespace backwards to the next tab-stop, otherwise delete one character."
    (interactive)
    (let ((movement (% (current-column) my-offset))
          (p (point)))
      (when (= movement 0) (setq movement my-offset))
      ;; Account for edge case near beginning of buffer
      (setq movement (min (- p 1) movement))
      (save-match-data
        (if (string-match "[^\t ]*\\([\t ]+\\)$" (buffer-substring-no-properties (- p movement) p))
            (backward-delete-char (- (match-end 1) (match-beginning 1)))
          (call-interactively 'backward-delete-char)))))
  (local-set-key (kbd "DEL") 'backspace-whitespace-to-tab-stop))
