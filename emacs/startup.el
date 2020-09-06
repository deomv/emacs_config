
;;(setq install-layout-file "~/config/emacs/layout.el")


(setq install-base-dir "~/config/emacs")
(setq install-user-base-dir "~/config/emacs/user")

(setq load-path (cons (expand-file-name "config/emacs/3rdparty" "~") load-path))


(load "~/config/emacs/3rdparty/undo-tree")
(load "~/config/emacs/3rdparty/anything")
;;(load "~/config/emacs/3rdparty/regex-tool")
(load "~/config/emacs/3rdparty/grep-ed")
(load "~/config/emacs/3rdparty/iswitchb-highlight.el")

(require 'lusty-explorer)
(require 'smooth-scrolling)

(load "~/config/emacs/3rdparty/fuzzy")




;;(require 'nc)
;;(require 'bm)

 ;;gtags
(autoload 'gtags-mode "gtags" "" t)


(load "~/config/emacs/3rdparty/clang-format")
(load "~/config/emacs/3rdparty/bookmark+")
;;(load "~/config/emacs/3rdparty/anything-config.el")
(load "~/config/emacs/3rdparty/dired+")
(load "~/config/emacs/user/cpp/find-header-file")
;;(load "~/config/emacs/3rdparty/sr-speedbar")




(load "~/config/emacs/user/functions/blink")

(load "~/config/emacs/user/functions/constrain")
(load "~/config/emacs/user/functions/fix-hist")
;;(load "~/config/emacs/user/functions/swap-case")
(load "~/config/emacs/user/functions/file-cache-x")
(load "~/config/emacs/user/functions/copy-rectangle")
(load  "~/config/emacs/user/functions/parenthesis-matching")
(load  "~/config/emacs/user/functions/find-file-root")

(load "~/config/emacs/user/config/advice")
(load "~/config/emacs/user/config/custom")
(load "~/config/emacs/user/config/faces")
(load "~/config/emacs/user/config/keys")
(load "~/config/emacs/user/config/misc")
;;(load "~/config/emacs/user/config/server")
(load "~/config/emacs/user/config/xwindows")
;;(load "~/config/emacs/user/config/cpp")

(load "~/config/emacs/user/config/misc")

(load "~/config/emacs/user/modes/hs")
(load "~/config/emacs/user/modes/desktop.el")
(load "~/config/emacs/user/modes/cc-mode.el")


;;
;;; Org Mode
;;;
(require 'org-install)
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files (quote ("~/org")))


;;HELM

;;(add-to-list  'load-path "~/config/emacs/3rdparty/emacs-async-master");
;;(require 'async)
;;(dired-async-mode 1)

;;(add-to-list  'load-path "~/config/emacs/3rdparty/helm-master")
;;(require 'helm-config)
;;(require 'helm)

;;(global-set-key (kbd "M-x") 'helm-M-x)
;;(global-set-key (kbd "C-x b") 'helm-mini)

;; The default "C-x c" is quite close to "C-x C-c", which quits Emacs.
;; Changed to "C-c h". Note: We must set "C-c h" globally, because we
;; cannot change `helm-command-prefix-key' once `helm-config' is loaded.
;;(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-unset-key (kbd "C-x c"))

;;(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action) ; rebind tab to run persistent action
;;(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action) ; make TAB work in terminal
;;(define-key helm-map (kbd "C-z")  'helm-select-action) ; list actions using C-z

;;(when (executable-find "curl")
;;  (setq helm-google-suggest-use-curl-p t))

;;(setq helm-split-window-in-side-p           t ; open helm buffer inside current window, not occupy whole other window
;;      helm-move-to-line-cycle-in-source     t ; move to end or beginning of source when reaching top or bottom of source.
;;      helm-ff-search-library-in-sexp        t ; search for library in `require' and `declare-function' sexp.
;;      helm-scroll-amount                    8 ; scroll 8 lines other window using M-<next>/M-<prior>
;;      helm-ff-file-name-history-use-recentf t
;;      helm-echo-input-in-header-line t)

;;(defun spacemacs//helm-hide-minibuffer-maybe ()
;;  "Hide minibuffer in Helm session if we use the header line as input field."
;;  (when (with-helm-buffer helm-echo-input-in-header-line)
;;    (let ((ov (make-overlay (point-min) (point-max) nil nil t)))
;;      (overlay-put ov 'window (selected-window))
;;      (overlay-put ov 'face
;;                   (let ((bg-color (face-background 'default nil)))
;;                     `(:background ,bg-color :foreground ,bg-color)))
;;      (setq-local cursor-type nil))))


;;(add-hook 'helm-minibuffer-set-up-hook
;;          'spacemacs//helm-hide-minibuffer-maybe)

;;(setq helm-autoresize-max-height 0)
;;(setq helm-autoresize-min-height 40)
;;(helm-autoresize-mode 1)


;;(helm-mode 1)

;;(load "~/config/emacs/3rdparty/projectile-master/projectile.el")
;;(load "~/config/emacs/3rdparty/helm-projectile-master/helm-projectile.el")

;;(setq projectile-indexing-method 'native)
;;(setq projectile-enable-caching t)

(add-to-list 'load-path "~/config/emacs/3rdparty/julia-emacs-master")
(require 'julia-mode)
