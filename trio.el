;;; trio.el --- In place list operations in Elisp    -*- lexical-binding: t; -*-

;; Copyright (C) 2019 Chimay

;; Author : Chimay
;; Name: Duo
;; Package-Version: 1.0
;; Package-requires: ((emacs "26"))
;; Keywords: lisp, extensions, list, double, dual, reverse
;; URL: https://github.com/chimay/trio

;;; Commentary:

;; trio = (CAR . CDR)
;;
;; car trio = reference to the first cons in list
;; cdr trio = reference to the last cons in list
;;
;; car of reference to cons in list = reference to previous cons in list
;; cdr of reference to cons in list = cons in list
;;
;;                                trio
;;                            +-----+-----+
;;                            |     |     |
;;       +--------------------+---  |  ---+--------------------+
;;       |                    |     |     |                    |
;;       |                    +-----+-----+                    |
;;       |                      car   cdr                      |
;;       |                                                     |
;;       |                                                     |
;; +-----+-----+     +-----+-----+     +-----+-----+     +-----+-----+
;; |     |     |     |     |     |     |     |     |     |     |     | reflist
;; |     | |   |<----+--   |  |  |<----+---  |  |  |<----+--   |  |  | iterate in
;; |     | |   |     |     |  |  |     |     |  |  |     |     |  |  | reverse
;; +-----+-+---+     +-----+--+--+     +-----+--+--+     +-----+--+--+ order
;;         |                  |                 |                 |
;;         |                  |                 |                 |
;;         |                  |                 |                 |
;;         |                  |                 |                 |
;;         |                  |                 |                 |
;; +-----+-----+     +-----+-----+     +-----+-----+     +-----+-----+
;; |     |     |     |     |     |     |     |     |     |     |     |
;; |  |  |  ---+---->|  |  |  ---+---->|  |  |  ---+---->|  |  |     | classic list
;; |  |  |     |     |  |  |     |     |  |  |     |     |  |  |     |
;; +--+--+-----+     +--+--+-----+     +--+--+-----+     +--+--+-----+
;;    |                 |                 |                 |
;;    |                 |                 |                 |
;;    |                 |                 |                 |
;;    |                 |                 |                 |
;;    |                 |                 |                 |
;; +--+--+           +--+--+           +--+--+           +--+--+
;; |     |           |     |           |     |           |     |
;; |     |           |     |           |     |           |     |
;; |     |           |     |           |     |           |     |
;; +-----+           +-----+           +-----+           +-----+
;; element 1         element 2         element 3         element 4


;;; License:
;;; ----------------------------------------------------------------------

;; This file is not part of Emacs.

;; This program is free software; you can redistribute it and/or modify it
;; under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 2, or (at your option)
;; any later version.

;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING. If not, write to the
;; Free Software Foundation, Inc., 59 Temple Place - Suite 330,
;; Boston, MA 02111-1307, USA.

;;; End
;;; ------------------------------------------------------------

(provide 'trio)

;; Local Variables:
;; mode: emacs-lisp
;; indent-tabs-mode: nil
;; End:

;;; trio.el ends here
