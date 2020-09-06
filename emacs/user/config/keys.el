;; Emacs configuration file
;; Key bindings
;; Written by Martin Ebourne
;; $Id: keys.el 871 2009-08-03 10:30:32Z martin $

;; Cursor movement
(global-set-key "\M-\C-z"     'scroll-other-window-down)
(global-set-key "\M-g"        'goto-line)
(global-set-key [home]        'beginning-of-buffer)
(global-set-key [end]         'end-of-buffer)

;; Text editing
(global-set-key "\C-m"        'newline-and-indent)
(global-set-key "\C-xw"       'copy-word-as-kill)
(global-set-key "\M-s"        'swap-case)
(global-set-key [C-backspace] 'kill-current-line)
(global-set-key "\M-p"        'call-last-kbd-macro)

(global-set-key "\C-w" 'backward-kill-word)
(global-set-key "\C-x\C-k" 'kill-region)
(global-set-key "\C-c\C-k" 'kill-region)

(global-set-key "\C-xf" 'clang-format-region)


;; Searching
(global-set-key "\C-x%"       'query-replace-regexp)
(global-set-key "\C-x\M-%"    'tags-query-replace)
(global-set-key "\C-xt"       'tags-search)

(global-set-key (kbd  "<f8>")  'rgrep)
(global-set-key (kbd  "<f9>")  'find-name-dired)
(global-set-key (kbd  "<f10>")  'find-grep-dired)
(global-set-key (kbd  "<f5>")   'grep-ed-start)
(global-set-key (kbd  "<f6>")   'grep-ed-save-changes-and-exit)

(global-set-key (kbd  "<f12>")  'find-header-file)

(global-set-key (kbd  "C-#")  'gtags-find-tag)
(global-set-key (kbd  "C-;")  'gtags-find-tag-from-here)
(global-set-key (kbd  "C-'")  'gtags-find-rtag)

;;auto expand
(global-set-key (kbd "C-.") 'dabbrev-expand)
(define-key minibuffer-local-map (kbd "C-.") 'dabbrev-expand)

;; Applications
(global-set-key "\C-xve"      'vc-ediff)
(global-set-key "\C-xv!"      'vc-version-diff)
(global-set-key "\C-xvz"      'cvs-update)
(global-set-key "\M-\C-x"     'compile)
(global-set-key "\C-x:"       'ielm)
;(global-set-key "\M-n"        'gnus)

;; Buffer operations
(global-set-key "\M-o"        'eval-current-buffer)
(global-set-key "\C-x\C-q"    'toggle-read-only)
(global-set-key [67108897]    'kill-this-buffer)      ; C-!
(global-set-key "\C-x\C-r"    'find-file-root)
(global-set-key [C-home]      'previous-buffer)
(global-set-key [C-end]       'next-buffer)
(global-set-key [M-up]        '(lambda () (interactive) (other-window -1)))
(global-set-key [M-down]      'other-window)
(global-set-key "\C-xc"       '(lambda () (interactive)
				 (switch-to-buffer-other-window "*scratch*")))
(global-set-key [up]          '(lambda () (interactive)
				 (let ((line-move-visual t))
				   (previous-line))))
(global-set-key [down]          '(lambda () (interactive)
				   (let ((line-move-visual t))
				     (next-line))))

;; Rectangle operations
(global-set-key "\C-xrw"      'copy-rectangle)
(global-set-key "\C-xr\\"     'close-left-rectangle)
(global-set-key "\C-xr/"      'close-rectangle)

;; Set up repeat key. Should only be on windowing version
;;(global-set-key "\C-z"        'repeat)
;;(setq repeat-on-final-keystroke "z")

(global-set-key "\C-z" 'undo-tree-undo)
(global-set-key "\C-v" 'undo-tree-redo)

(global-set-key "\C-co" 'ff-find-other-file)
;; Minibuffer keys
(define-key minibuffer-local-must-match-map [M-n]
  'file-cache-minibuffer-complete-on-filename)
(define-key minibuffer-local-must-match-map [M-return]
  'file-cache-minibuffer-complete-on-filename-and-exit)
(define-key minibuffer-local-must-match-map [C-return]
  'file-cache-minibuffer-complete-and-exit)


;;parenthesis move forward backard
;;(global-set-key (kbd "M-)")           (quote move-forward-paren))
;;(global-set-key (kbd "M-(")           (quote move-backward-paren))

;;(global-set-key (kbd "M-]")           (quote move-forward-sqrParen))
;;(global-set-key (kbd "M-[")           (quote move-backward-sqrParen))

;;(global-set-key (kbd "M-}")           (quote move-forward-curlyParen))
;;(global-set-key (kbd "M-{")           (quote move-backward-curlyParen))
;;(global-set-key "\M-#"          'goto-match-paren)



(global-set-key  "\M-n"           'select-inside-quotes)
(global-set-key (kbd "M-[")    (quote goto-match-paren))
(global-set-key "\C-xe"          'lusty-file-explorer)
(global-set-key "\C-xq"          'anything)
