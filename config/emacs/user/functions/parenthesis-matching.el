;;(defun goto-match-paren (arg)
;;  "Go to the matching parenthesis if on parenthesis, otherwise insert %.
;;vi style of % jumping to matching brace."
;;  (interactive "P")
;;  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
;;        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
;;        (t (self-insert-command (or arg 1)))))


 (defun goto-match-paren (arg)
     "Go to the matching parenthesis if on parenthesis. Else go to the
   opening parenthesis one level up."
     (interactive "p")
     (cond ((looking-at "\\s\(") (forward-list 1))
           (t
            (backward-char 1)
            (cond ((looking-at "\\s\)")
                   (forward-char 1) (backward-list 1))
                  (t
                   (while (not (looking-at "\\s("))
                     (backward-char 1)
                     (cond ((looking-at "\\s\)")
                            (message "->> )")
                            (forward-char 1)
                            (backward-list 1)
                            (backward-char 1)))
                     ))))))


;; select text btw double or ordinary quotes

(defun select-inside-quotes ()
  "Select text between double straight quotes
on each side of cursor."
  (interactive)
  (let (p1 p2)
    (skip-chars-backward "^\'\"")
    (setq p1 (point))
    (skip-chars-forward "^\'\"")
    (setq p2 (point))

    (goto-char p1)
    (push-mark p2)
    (setq mark-active t)
  )
)








