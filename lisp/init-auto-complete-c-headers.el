(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers )
  (add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-redhat-linux/4.8.3/include"))

(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)

(provide 'init-auto-complete-c-headers)
