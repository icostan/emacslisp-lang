;;; rubogun-test.el ---                              -*- lexical-binding: t; -*-

;; Copyright (C) 2015  Iulian Costan

;; Author: Iulian Costan <syk@Macbook.local>
;; Keywords: rubogun ert

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

;; 

;;; Code:
(when (require 'undercover nil t)
  (undercover "rubygun.el"))

(require 'rubygun nil t)

(ert-deftest hello-world ()
  :tags '(rubogun)
  (should (equal (+ 1 1)
		 2)))

(provide 'rubogun-test)
;;; rubogun-test.el ends here
