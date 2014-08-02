(semantic-mode 1)

(defun my:add-semantic-to-autocomplete()
  (add-to-list 'ac-sources 'ac-source-semantic)
)
(add-hook 'c-mode-common-hook 'my:add-semantic-to-autocomplete)

(global-ede-mode 1)

;;Projects
;; (ede-cpp-root-project "my project" :file "~/projects/project1/src/main.cpp"
;;                       :include-path '("../my_inc"))

(provide 'init-cedet)
