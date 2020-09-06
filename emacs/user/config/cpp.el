;;gtags
(autoload 'gtags-mode "gtags" "" t)

;;c++ mode files
(add-to-list 'auto-mode-alist '("\\.h$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.cpp$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.H$" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.C$" . c++-mode))


(setq c-default-style "linux"
          c-basic-offset 2)

