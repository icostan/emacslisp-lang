;;; ruby-goodies.el --- Collection of functions for Rubocop -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Iulian Costan

;; Author: Iulian Costan <iulian.costan@gmail.com>
;; Keywords: speed, convenience, ruby
;; Version: 0.0.1

;; This file is NOT part of GNU Emacs.


;;; License:

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.


;;; Commentary:

;; "Collection of handy functions for Rubocop."


;;; Code:

(require 'ruby-mode)

(defvar ruby-goodies-mode-map
  (let ((map (make-sparse-keymap)))
    (define-key map (kbd "C-c r h") 'ruby-goodies-hashie)
    map)
  "Keymap for `ruby-goodies-mode'.")

(defun ruby-goodies-hashie()
  "Update to Ruby 1.9 hash style."
  (interactive)
  (backward-sexp)
  (delete-char 1)
  (forward-sexp)
  (kill-forward-chars 3)
  (insert ":"))
    
;;;###autoload
(define-minor-mode ruby-goodies-mode
  "Collection of handy functions for Rubocop."
  :init-value nil
  :lighter " rt"
  :keymap ruby-goodies-mode-map)

(add-hook 'ruby-mode-hook 'ruby-goodies-mode)

(provide 'ruby-goodies)

;;; ruby-goodies.el ends here
