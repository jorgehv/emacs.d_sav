;; Write backup files to own directory
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

;; Make backups of files, even when they're in version control
(setq vc-make-backup-files t)

(global-set-key [remap goto-line] 'goto-line-with-feedback)

(defun goto-line-with-feedback ()
  "Show line numbers temporarily, while prompting for the line number input"
  (interactive)
  (unwind-protect
      (progn
        (linum-mode 1)
        (goto-line (read-number "Goto line: ")))
    (linum-mode -1)))

(defun open-line-below ()
  (interactive)
  (end-of-line)
  (newline)
  (indent-for-tab-command))

(defun open-line-above ()
  (interactive)
  (beginning-of-line)
  (newline)
  (forward-line -1)
  (indent-for-tab-command))

(global-set-key (kbd "<M-return>") 'open-line-below)
(global-set-key (kbd "<M-S-return>") 'open-line-above)


(require 'key-chord)
(key-chord-mode 1)

;; (key-chord-define c++-mode-map ";;"  "\C-e;")
;; (key-chord-define c-mode-map ";;"  "\C-e;")
;; (key-chord-define c++-mode-map "{}"  "{\n\n}\C-p\t")
;; (key-chord-define c-mode-map "{}"  "{\n\n}\C-p\t")

(add-hook 'c-mode-hook 'column-enforce-mode)
(add-hook 'c++-mode-hook 'column-enforce-mode)

(provide 'init-local)
