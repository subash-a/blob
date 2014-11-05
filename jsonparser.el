;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

(setq json "{key:value}")

(defun parseJson (json)
;; Parsing json by tokens
  (setq result '())
  (setq tokens (string-to-list json))
  (dolist (token tokens result)
    (add-to-list 'result (char-to-string token))))
(parseJson json)

;; Experiment Section
(setq jar '("hello"))
(add-to-list 'jar (char-to-string 123))
(setq r "")
(setq parsed (dolist (i jar r)
  (setq r (concat r i))))
parsed
