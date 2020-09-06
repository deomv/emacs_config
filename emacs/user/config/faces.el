;; Emacs configuration file
;; Extra font lock faces
;; Written by Martin Ebourne
;; $Id: faces.el 725 2004-03-04 22:10:48Z martin $

;;(defvar font-lock-number-face	'font-lock-number-face
;;  "Face name to use for numbers.")

;;(defface font-lock-number-face
;;  '((((class grayscale) (background light))
;;     (:foreground "LightGray" :bold t :italic t))
;;    (((class grayscale) (background dark))
;;     (:foreground "DimGray" :bold t :italic t))
;;    (((class color) (background light)) (:foreground "Firebrick"))
;;    (((class color) (background dark)) (:foreground "OrangeRed"))
;;    (t (:bold t :italic t)))
;;  "Font Lock mode face used to highlight numbers."
;;  :group 'font-lock-highlighting-faces)

(defvar font-lock-member-face	'font-lock-member-face
  "Face name to use for data members.")

(defface font-lock-member-face
  '((((class grayscale) (background light))
     (:foreground "LightGray" :bold t :italic t))
    (((class grayscale) (background dark))
     (:foreground "DimGray" :bold t :italic t))
    (((class color) (background light)) (:foreground "dim gray"))
    (((class color) (background dark)) (:foreground "OrangeRed"))
    (t (:bold t :italic t)))
  "Font Lock mode face used to highlight data members."
  :group 'font-lock-highlighting-faces)



;;colours

;;bgcolor foreground default
;; Set emacs background colour
;;(set-background-color "white")
;;(set-foreground-color "black")
;;(set-cursor-color "brown")

(add-to-list 'default-frame-alist '(background-color . "white"))
(add-to-list 'default-frame-alist '(foreground-color . "black"))
(add-to-list 'default-frame-alist '(cursor-color . "brown"))

;;(add-to-list 'default-frame-alist '(background-color . "black"))
;;(add-to-list 'default-frame-alist '(foreground-color . "white"))
;;(add-to-list 'default-frame-alist '(cursor-color . "brown"))



;;(prin1-to-string (x-list-fonts "t"))

;;(prin1-to-string (x-list-fonts "sans"));;

;;type (prin1-to-string (x-list-fonts "sans")) and set cursor after last ) and type C-j
;; (set-default-font "-bitstream-Bitstream Vera Sans-normal-oblique-normal-*-*-*-*-*-*-0-iso10646-1")

;;(prin1-to-string (x-list-fonts "Verdana"))


;;(set-default-font "-microsoft-Verdana-normal-normal-normal-*-*-*-*-*-*-0-iso10646-1")

;;(set-default-font "-Adobe-Courier-Medium-R-Normal--11-110-75-75-M-90-ISO8859-1")

;;(set-default-font "-bitstream-Bitstream Vera Sans Mono-normal-normal-normal-*-*-*-*-*-m-0-iso10646-1")

;;(set-default-font "-bitstream-Bitstream Vera Sans Mono-normal-normal-normal--12-140-75-75-m-90-iso10646-1")

;;(set-frame-font  "-bitstream-Bitstream Vera Sans Mono-normal-normal-normal--12-140-75-75-m-90-iso10646-1");

;;(add-to-list 'default-frame-alist '(font . "-bitstream-Bitstream Vera Sans Mono-normal-normal-normal--12-140-75-75-m-90-iso10646-1"))


;;(set-face-attribute 'default nil :height 100)





;;custom font-lock- c++/java/perl

(custom-set-faces
'(font-lock-comment-face ((((class color) (background light)) (:foreground "dark green"))
			    (((class color) (background dark)) (:foreground "green"))))
'(font-lock-constant-face ((((class color) (background light)) (:foreground "medium blue"))
			      (((class color) (background dark)) (:foreground "dodger blue"))))
 '(font-lock-string-face ((((class color) (background light)) (:foreground "indian red"))
			  (((class color) (background dark)) (:foreground "cyan"))))
'(font-lock-keyword-face ((((class color) (background light)) (:foreground "medium blue"))
			    (((class color) (background dark)) (:foreground "pale goldenrod"))))
;; '(font-lock-warning-face ((((class color) (background light)) (:foreground "red"))
;;			    (((class color) (background dark)) (:foreground "red"))))
 '(font-lock-type-face ((((class color) (background light)) (:foreground "medium blue"))
			 (((class color) (background dark)) (:foreground "light salmon"))))
'(font-lock-number-face ((((class color) (background light)) (:foreground "gold4"))
			  (((class color) (background dark)) (:foreground "orange"))))
 '(font-lock-variable-name-face ((((class color) (background light)) (:foreground "black"))
				  (((class color) (background dark)) (:foreground "yellow"))))
 '(font-lock-function-name-face ((((class color) (background light)) (:foreground "brown"))
				  (((class color) (background dark)) (:foreground "light pink"))))
;; '(font-lock-rose-comment-face ((((class color) (background light)) (:foreground "gray"))
;;				 (((class color) (background dark)) (:foreground "dark green"))))
 '(trailing-whitespace ((t (:background "grey90")))))


; orchid, indian red, dark khaki

;;(add-hook 'c-mode-common-hook
;;               (lambda ()
;;                (font-lock-add-keywords nil
;;                 '(cons (concat "\\(" ctoken "\\)[ \t]*(") '(1 font-lock-function-name-face)) t )))

;;(add-hook 'c-mode-common-hook
;;               (lambda ()
;;                (font-lock-add-keywords nil
;;                 '(("\\(" ctoken "\\)[ \t]*(" 1 font-lock-function-name-face t)))))


;;(setq font-lock-maximum-decoration
;;           '((c-mode . 1) (c++-mode . 1)))









